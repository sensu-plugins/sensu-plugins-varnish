# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]

## [1.1.2] - 2017-08-29
### Fixed
 - updated backend status check to include new Varnish command `backend.list` (@shaun-rutherford)

## [1.1.1] - 2017-08-18
### Fixed
 - `which` returns a newline terminated string in all cases - strip it before trying to run the command otherwise the generated command will be split over two lines and fail (@warmfusion)

### Changed
- switched from `strip` to `chomp` as it will be more performant for the use case (@majormoses)

## [1.1.0] - 2017-08-01
### Changed
- Use full path for varnish scripts to allow sudoers files with explicit binaries to work (@warmfusion)

### Removed
- Removed legacy Rake code that prevented rubocop running during Ruby 1.9.3 tests (@thomasriley)

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

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/1.1.1...HEAD
[1.1.2]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.1.0...1.0.0
[0.1.0]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.5...0.1.0
[0.0.5]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.4...0.0.5
[0.0.4]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-varnish/compare/0.0.1...0.0.2
