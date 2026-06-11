# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/).
Since version 4.0.0, this project adheres to [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [4.1.0] - 2026-06-12

### Added

- Update the declaration to cover the use of AI tools: the affirmation text now references a "Use of AI Tools" appendix and the *Principles for the Use of Artificial Intelligence by Students at the University of Stuttgart*. See [#30](https://github.com/latextemplates/scientific-thesis-cover/pull/30) and [#36](https://github.com/latextemplates/scientific-thesis-cover/pull/36).
- Add `Institute for Natural Language Processing` (`ims`, German: "Institut für Maschinelle Sprachverarbeitung") as an institute option, including its own address. See [#22](https://github.com/latextemplates/scientific-thesis-cover/pull/22) and [#23](https://github.com/latextemplates/scientific-thesis-cover/pull/23).
- Add `VISUS` (Visualization Research Center / Visualisierungsinstitut der Universität Stuttgart) as an institute option, including its own address. See [#27](https://github.com/latextemplates/scientific-thesis-cover/pull/27).
- Add the ability to add a logo at the top of the coverpage. See [#28](https://github.com/latextemplates/scientific-thesis-cover/pull/28).
- Add document confirmations for multiple authors. See [#24](https://github.com/latextemplates/scientific-thesis-cover/pull/24).
- Add `prozessanalyse` as a thesis type. See [#21](https://github.com/latextemplates/scientific-thesis-cover/pull/21).

### Changed

- Rename the `iste` institute from "Institute of Software Technology" / "Institut für Softwaretechnologie" to "Institute of Software Engineering" / "Institut für Software Engineering". See [#32](https://github.com/latextemplates/scientific-thesis-cover/pull/32).
- Switched continuous integration from CircleCI to GitHub Actions, installing TeX Live via [`zauguin/install-texlive`](https://github.com/zauguin/install-texlive) with the dependency list in `tl_packages` (generated with [@islandoftex/texmf/depp](https://gitlab.com/islandoftex/texmf/depp)). See [#37](https://github.com/latextemplates/scientific-thesis-cover/pull/37).
- Added a GitHub Actions workflow that builds the CTAN submission archive (`release.sh`, the Linux port of `release.bat`) on every push, verifying that pandoc and `ctanify` produce `scientific-thesis-cover.tar.gz`. See [#37](https://github.com/latextemplates/scientific-thesis-cover/pull/37).

### Fixed

- Fix `\Versicherung` / `\Affirmation` in two-column documents by declaring the internal two-column flag with `\providecommand`. See [#24](https://github.com/latextemplates/scientific-thesis-cover/pull/24).
- Fix `ß` being displayed as `SS` in `Universitätsstraße`. See [#29](https://github.com/latextemplates/scientific-thesis-cover/pull/29).
- Fix English name of IPVS: "Institute **for** Parallel and Distributed Systems" instead of "Institute **of** Parallel and Distributed Systems". See [#34](https://github.com/latextemplates/scientific-thesis-cover/pull/34) and [#35](https://github.com/latextemplates/scientific-thesis-cover/pull/35).
- Load `csquotes` so that `\enquote` in the affirmation text (AI tools declaration) is defined. See [#37](https://github.com/latextemplates/scientific-thesis-cover/pull/37).
- Load `iftex`/`ifluatex` so that `\ifluatex` is defined again, fixing an `Extra \fi` error on current TeX Live. See [#37](https://github.com/latextemplates/scientific-thesis-cover/pull/37).

## [4.0.2] - 2018-06-03

### Fixed

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

## [3.0] - 2012-11-20

### Added

- First release, versioned outside of GitHub.

[Unreleased]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.1.0...HEAD
[4.1.0]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.2...4.1.0
[4.0.2]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.1...4.0.2
[4.0.1]: https://github.com/latextemplates/scientific-thesis-cover/compare/4.0.0...4.0.1
[4.0.0]: https://github.com/latextemplates/scientific-thesis-cover/compare/3.1...4.0.0
[3.1]: https://github.com/latextemplates/scientific-thesis-cover/compare/3.0...3.1
[3.0]: https://github.com/latextemplates/scientific-thesis-cover/releases/tag/3.0
<!-- markdownlint-disable-file MD024 MD033 MD053 -->
