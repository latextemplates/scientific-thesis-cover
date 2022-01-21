# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).
Since version 4.0.0, this project adheres to [Semantic Versioning](http://semver.org/).

## [unreleased]

### Added
- Add `Institute for Natural Language Processing` as an institute option
- Add document confirmations for multiple authors

## Fixed
- Fix `ß` being displayed as `SS` in `Universitätsstraße`.

## [4.0.2] - 2018-06-03

## Fixed
- Also include `demo.tex` and `CHANGELOG.md` in CTAN upload.

## [4.0.1] - 2018-06-03

### Fixed
- Fix `\USCCover@setLanguage` to have correct `{}` in the implementation.

### Changed
- CTAN distributions contains `scientific-thesis-cover.pdf` instead of `README.md` to be consistent with other packages.

## [4.0.0] - 2016-12-30

### Added

- Added shorthand for sec institute.
- Added `demo.tex` which produces `demo.pdf` providing a short illustration.

### Changed

- Renamed repository from uni-stuttgart-cs-cover to scientific-thesis-cover to stress that the cover also can be used at other institutions.
- Numbers are now optional.
- Cover is sans serif again.

### Removed

- Removed `thesis.tex` as we recommend <https://github.com/latextemplates/scientific-thesis-template>.
- Removed "CR classification" as the [ACM Computing Classification System](https://en.wikipedia.org/wiki/ACM_Computing_Classification_System) from [1998](https://www.acm.org/about-acm/class/how-to-use) is superseeded by a very different system from [2012](https://www.acm.org/publications/class-2012). However, the 2012 classification is not required by the University of Stuttgart anymore.

## [3.1] - 2016-05-29

### Added

- Added README.md
- Added example thesis
- Added more types and courses
- Added support for two-column documents

### Fixed

- Fix typo at German "signature"

### Changed

- Versioning on GitHub
- Cover is typeset with serif font

## 3.0 - 2012-11-20

Versioned outside of GitHub.

[unreleased]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.2...HEAD
[4.0.2]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.1...4.0.2
[4.0.1]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.0...4.0.1
[4.0.0]: https://github.com/latextemplates/scientific-thesis-cover/compare/3.1...4.0.0
[3.1]: https://github.com/latextemplates/scientific-thesis-cover/compare/3.0...3.1
