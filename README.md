# Cover page for scientific works [![Build Status](https://circleci.com/gh/latextemplates/scientific-thesis-cover/tree/master.svg?style=shield)](https://circleci.com/gh/latextemplates/scientific-thesis-cover/) [![CTAN](https://img.shields.io/badge/CTAN-scientific--thesis--cover-blue.svg?style=flat-square)](https://ctan.org/pkg/scientific-thesis-cover)

Institutions require a cover page and an affirmation at the end of the thesis.
This package provides both.
It stems from the [computer science institutes of the University of Stuttgart], but is open to any university.

In case you are looking for a **full thesis template** including a cover page and affirmation, please go to <https://latextemplates.github.io/scientific-thesis-template/>.
Please report issues concerning this package at the GitHub repository at <https://github.com/latextemplates/scientific-thesis-cover>.

## Features

- utf8
- options for all required text on the coverpage

## Installation

Usually, one does not need a seperate installation step, because both MiKTeX and texlive come with a recent version of this template.
Do not forget to [keep your tex distribution updated](https://tex.stackexchange.com/q/55437/9075).

Alternatively, you can download `scientific-thesis-cover.sty` and put it in the folder where you are going to use it.

## Usage Example

An example can be found in [demo.tex](demo.tex).

## Usage

Just include the package with all options specified:

    \usepackage[
        title={Super relevant evaluation of new blackhole-generation method},
        author={Max Musterjunge},
        type=bachelor,
        institute=iaas,
        course=cs,
        examiner={Prof.\ Dr.\ Hans Mustermann},
        supervisor={Otto Normalverbraucher, M.Sc.},
        startdate={2012-06-01},
        enddate={2012-12-01},
        language=english
    ]{scientific-thesis-cover}

Afterwards you can create the cover using `\Coverpage` and get the affirmation text by using `\Affirmation`

## Supported Options

This package supports the following options:

- language: Language used for all labels and text.
    - `language=german` will use german (default)
    - `language=english` will use english

- title: Title of work. Should be placed in curly braces:

    - `title={My thesis title}`
    - `title={My very long thesis title}`

- author: Author of work. Should be placed in curly braces. May contain more than one author seperated by commas:
    - `author={Peter Lustig}`
    - `author={Peter Lustig, Franz Josef, Vladimir Sixth}`

- type: Type of work. May be set to one of the following values or arbitrary text in curly braces:
    - `type=bachelor` will label your work as Bachelor's Thesis.
      Currently, the term regulations of the University of Stuttgart are in place.
      It is assumed that you study a German Bachelor program.
      Thus, even if you write in English, the type of your thesis is a "Bachelorarbeit".
      In case you study in a different program (such as [INFOTECH]), please fill in the appropriate type of your thesis in curly brackets.
      See below.
    - `type=master` will label your work as Masters's Thesis
    - `type=diplom` will label your work as Diploma Thesis
    - `type=study` will label your work as Student Research Project
    - `type=projectinf` will label your work as Projekt-INF
    - `type=prozessanalyse` will label your work as Prozessanalyse
    - Arbitrary strings are also possible: `type={research project}` will label your work as "research project"

- institute: States for which institute you are doing this work. May be set to one of the following values or arbitrary text in curly braces:
    - `institute=iaas` will state Institute of Architecture of Application Systems
    - `institute=ipvs` will state Institute of Parallel and Distributed Systems
    - `institute=fmi` will state Institute of Formal Methods in Computer Science
    - `institute=ims` will state Institute for Natural Language Processing
    - `institute=iste` will state Institute of Software Technology
    - `institute=iti` will state Institute of Computer Architecture and Computer Engineering
    - `institute=iris` will state Institute of Computer-aided Product Development Systems
    - `institute=vis` will state Institute of Visualization and Interactive Systems
    - `institute=visus` will state Visualization Research Center (VISUS)
    - `institute=sec` will state Institute of Information Security
    - `institute=fac` will state Faculty of Computer Science
    - Arbitrary strings are possible: `institute={Custom fictional institute}` will state Custom fictional institute

- course: Type of study. May be set to one of the following values or arbitrary text in curly braces:
    - `course=cs` will state that your course of study is Computer Science
    - `course=se` will state that your course of study is Software Engineering
    - `course=mcl` will state that your course of study is Master Computational Linguistics
    - `course=msv` will state that your course of study is Maschinelle Sprachverarbeitung
    - `course=bis` will state that your course of study is Business Information Systems
    - `course=simtech` will state that your course of study is Simulation Technology
    - Arbitrary strings are possible: `course={New Study course}` will state that your course of study is New Study course

- examiner: Your examiner.
    - `examiner={Prof.\ Dr.\ Hans Mustermann}`

- supervisor: Your supervisor.
    - `supervisor={Otto Normalverbraucher, M.Sc.}`

- startdate: Startdate of your work.
  Preferably ISO-8601. See <https://xkcd.com/1179/> and <https://www.explainxkcd.com/wiki/index.php/1179:_ISO_8601>.
    - `startdate={2012-06-01}`

- enddate: Enddate of your work.
    - `enddate={2012-12-01}`

- crk: CR-Classification codes of your work. May be separated by commas:
    - `crk={A.1, A.2}`

## Additional Optional Options

- number: Running number of work. May contain arbitrary text. Should contain the number you got for your work.
    - `number=1234` will label your work to have number 1234
- `setPageNumberToOne=true` will set the page after the cover to `1` (default false)
- `setCoverPageNumberToMinusOne=true` will set `-1` as the page number for the cover page (default false)

## Known Problems

Multiline/Commands in option values are currently only supported if you load `kvoptions-patch` **before** the documentclass definition like this:

    \RequirePackage{kvoptions-patch}
    \documentclass[twoside]{article}

## How to release

1. Check if indent is correct: `latexindent -y="indentPreamble:1,defaultIndent:'    '" -m -w scientific-thesis-cover.sty`
1. Adapt `CHANGELOG.md`
2. Adapt version and date in `scientific-thesis-cover.sty`
3. Tag the release commit using `git tag`
4. Push to GitHub
5. Add CHANGELOG part to GitHub release manually, because [github-release-from-changelog](https://github.com/MoOx/github-release-from-changelog) currently works with `package.json`  only.
6. Publish to CTAN
  - Pre-conditions:
    - Windows: Patch `C:\MiKTeX\scripts\ctanify\ctanify`: Remove `-y` from `zip` command line arguments `zip -q -r -9 -y -m`.
    - Windows: Environment variable `TMP` must not contain backslashes. E.g., `C:/TEMP/WIN` is good, `C:\Users\user\AppData\Local\Temp` is bad.
    - Have `pandoc` and `sed` in the path.
  - Run `release.bat`.
  - Go to <https://ctan.org/pkg/scientific-thesis-cover>, choose "Upload"
  - Use `scientific-thesis-cover.tar.gz` as archive.
7. Adapt `CHANGELOG.md` to contain `## [unreleased]` again.

## License

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License, version 1.3c of the license.
The latest version of this license is in <http://www.latex-project.org/lppl.txt>
and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status "maintained".

The Current Maintainer and author of this work is Oliver Kopp.

This work consists of the files `scientific-thesis-cover.sty`, `demo.tex`, and `README.md`.
In case files are not listed here, but available at <https://github.com/latextemplates/scientific-thesis-cover>, these additional files also form part of this work.

### Contributors (incomplete list)

Bernd Raichle, Timo Heiber, Steffen Keul, Oliver Kopp, Kai Mindermann, Matthias Papesch, Nils Radtke, Niklas Schnelle, Tim Halach

  [computer science institutes of the University of Stuttgart]: http://www.informatik.uni-stuttgart.de/index.en.html
  [INFOTECH]: https://www.uni-stuttgart.de/infotech/
