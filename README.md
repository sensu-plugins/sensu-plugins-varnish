## Sensu-Plugins-varnish

[ ![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-varnish.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-varnish)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-varnish.svg)](http://badge.fury.io/rb/sensu-plugins-varnish)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-varnish)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-varnish.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-varnish)

## Functionality

## Files
 * bin/metrics-varnish.rb
 * bin/check-varnish-status.rb

## Usage

These checks need to sudo certain varnish scripts to be able to get status and metrics data.
To ensure sensu can run these commands, add the following to `/etc/sudoers.d/sensu-varnish` or wherever you
manage your sudo lists;

```
# Assuming that your varnish scripts are located in /usr/bin;
sensu ALL=(ALL) NOPASSWD: /usr/bin/varnishadm /usr/bin/varnishstat
```


## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)

## Notes
