## Sensu-Plugins-varnish

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-varnish.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-varnish)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-varnish.svg)](http://badge.fury.io/rb/sensu-plugins-varnish)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-varnish.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-varnish)

## Functionality

## Files
 * bin/metrics-varnish

## Usage

## Installation

Add the public key (if you haven’t already) as a trusted certificate

```
gem cert --add <(curl -Ls https://raw.githubusercontent.com/sensu-plugins/sensu-plugins.github.io/master/certs/sensu-plugins.pem)
gem install sensu-plugins-varnish -P MediumSecurity
```

You can also download the key from /certs/ within each repository.

#### Rubygems

`gem install sensu-plugins-varnish`

#### Bundler

Add *sensu-plugins-disk-checks* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-plugins-varnish' do
  options('--prerelease')
  version '0.0.1.alpha.4'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-plugins-varnish' do
  options('--prerelease')
  version '0.0.1.alpha.4'
end
```

## Notes

[1]:[https://travis-ci.org/sensu-plugins/sensu-plugins-varnish]
[2]:[http://badge.fury.io/rb/sensu-plugins-varnish]
[3]:[https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish]
[4]:[https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish]
[5]:[https://gemnasium.com/sensu-plugins/sensu-plugins-varnish]
