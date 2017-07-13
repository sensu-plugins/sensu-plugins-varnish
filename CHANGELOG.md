#Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]
### Removed
- Removed legacy Rake code that prevented rubocop running during Ruby 1.9.3 tests

## [1.0.0] - 2017-07-02
### Breaking Changes
- removed ruby 1.9 support (@majormoses)

### Added
- ruby 2.3 and 2.4 testing (@majormoses)

## [0.1.0] - 2017-07-02
### Added
- Added check-varnish-status (@hanynowsky)

## [0.0.5] - 2016-08-17
### Changed
- Updated sensu-plugin dependency from `= 1.2.0` to `~> 1.2.0`
- Removed puts debug code.
- Fixed varnishstats field list feature; previously did not work at all.

## [0.0.4] - 2015-09-14
### Added
- Add option to select varnishstat fields

## [0.0.3] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## [0.0.2] - 2015-06-03
### Fixed
- added binstubs

### Changed
- removed cruft from /lib

## 0.0.1 - 2015-05-20
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/1.0.0...HEAD
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.1.0...1.0.0
[0.1.0]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.5...0.1.0
[0.0.5]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.4...0.0.5
[0.0.4]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.1...0.0.2
