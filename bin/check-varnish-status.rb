#! /usr/bin/env ruby
#
#  check-varnish-status
#
# DESCRIPTION:
#   This is a simple check for varnish status.
#
# OUTPUT:
#   plain text
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   requires sensu user to be able to sudo varnishadm without password
#
# USAGE:
#   check-varnish-status -S secretfile -p port -h hostname
#
# NOTES:
#   N/A
#
# LICENSE:
#   Magic Online - www.magic.fr - <hanynowsky@gmail.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/check/cli'

#
# Check Varnish Status
#
class CheckVarnishStatus < Sensu::Plugin::Check::CLI
  option(
    :host,
    short: '-h host',
    long: '--host',
    description: 'Host where varnish is running',
    default: 'localhost'
  )

  option(
    :command,
    short: '-c COMMAND',
    long: '--command',
    description: 'Command to execute. default is : status. Possible values: status | debug.health',
    default: 'status'
  )

  option(
    :secret,
    short: '-s secret',
    long: '--secret',
    description: 'Secret file',
    default: '/etc/varnish/secret'
  )

  option(
    :timeout,
    short: '-T timeout',
    long: '--timeout',
    proc: proc(&:to_i),
    description: 'Timeout before returning an error',
    default: 5
  )

  option(
    :port,
    short: '-p',
    long: '--port',
    description: 'Varnish port',
    default: 6082
  )

  # Main Function
  def run
    # Keep a full reference for the varnish binary so sudo uses a full path
    varnishadm = `which varnishadm 2>/dev/null`.to_s
    unknown 'varnishadm is not installed!' unless varnishadm.include? 'varnish'
    command = `sudo #{varnishadm} -T #{config[:host]}:#{config[:port]} -S #{config[:secret]} -t #{config[:timeout]} #{config[:command]}`
    if config[:command] == 'status'
      if command.include? 'state running'
        ok 'Up & Running'
      else
        critical 'Varnish down'
      end
    end

    if config[:command] == 'debug.health'
      if command.downcase.include? 'sick'
        critical 'Sick backends detected'
      else
        ok 'All backends healthy'
      end
    end
    unknown "Check failed to run command #{config[:command]}"
  end
end
