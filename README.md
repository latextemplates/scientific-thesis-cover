# Cover page for scientific works

Institutions require a cover page and an affirmation at the end of the thesis.
This work provides both.

It stems from the [computer science institutes of the University of Stuttgart].

In case you are looking for a **full thesis template** including a cover page and affirmation, please go to <https://github.com/latextemplates/scientific-thesis-template>.

## Features

- utf8 
- options for all required text on the coverpage

## Installation

- Download `scientific-thesis-cover.sty`

## Usage Example

An example can be found in [tests/TEST_english_oneside.tex](tests/TEST_english_oneside.tex).

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
    - `type=bachelor` will label your work as Bachelor's Thesis
    - `type=master` will label your work as Masters's Thesis
    - `type=diplom` will label your work as Diploma Thesis
    - `type=study` will label your work as Student Research Project
    - `type=projectinf` will label your work as Projekt-INF
    - `type={research project}` will label your work as research project
    
- institute: States for which institute you are doing this work. May be set to one of the following values or arbitrary text in curly braces:
    - `institute=iaas` will state Institute of Architecture of Application Systems
    - `institute=ipvs` will state Institute of Parallel and Distributed Systems
    - `institute=fmi` will state Institute of Formal Methods in Computer Science
    - `institute=iste` will state Institute of Software Technology
    - `institute=iti` will state Institute of Computer Architecture and Computer Engineering
    - `institute=iris` will state Institute of Computer-aided Product Development Systems
    - `institute=vis` will state Institute of Visualization and Interactive Systems
    - `institute=visus` will state Visualisation Research Center Stuttgart
    - `institute=sec` will state Institute of Information Security
    - `institute=fac` will state Faculty of Computer Science
    - `institute={Custom fictional institute}` will state Custom fictional institute

- course: Type of study. May be set to one of the following values or arbitrary text in curly braces:
    - `course=cs` will state that your course of study is Computer Science
    - `course=se` will state that your course of study is Software Engineering
    - `course=mcl` will state that your course of study is Master Computational Linguistics
    - `course=msv` will state that your course of study is Maschinelle Sprachverarbeitung
    - `course=bis` will state that your course of study is Business Information Systems
    - `course=simtech` will state that your course of study is Simulation Technology
    - `course={New Study course}` will state that your course of study is New Study course

- examiner: Your examiner. 
    - `examiner={Prof.\ Dr.\ Hans Mustermann}`

- supervisor: Your supervisor.
    - `supervisor={Otto Normalverbraucher, M.Sc.}`

- startdate: Startdate of your work.
    - `startdate={2012/06/01}`

- enddate: Enddate of your work.    
    - `enddate={2012/12/01}`

- crk: CR-Classification codes of your work. May be seperated by commas:
    - `crk={A.1, A.2}`

## Additional Optional Options

- number: Running number of work. May contain arbitrary text. Should contain the number you got for your work.
    - `number=1234` will label your work to have number 1234
- `setPageNumberToOne=true` will set the page after the cover to `1` (default false)
- `setCoverPageNumberToMinusOne=true` will set `-1` as the page number for the cover page (default false)

## Known Problems

Multiline/Commands in option values are currently only supported if you load `kvoptions-patch` **before** the documentclass defintion like this:

    \RequirePackage{kvoptions-patch}
    \documentclass[twoside]{article}

## License

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License, version 1.3c of the license.
The latest version of this license is in <http://www.latex-project.org/lppl.txt>
and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status "maintained".

The Current Maintainer and author of this work is Oliver Kopp.

This work consists of the files refenums.sty, demo.tex, README, README.md, and test/demo-sec-param.tex.
In case files are not listed here, but available at https://github.com/koppor/refenums, these additional files also form part of this work.

### Contributors (incomplete list)

Copyright 1990-1996 Bernd Raichle
Copyright 2001 Timo Heiber, Matthias Papesch
Copyright 2005 Steffen Keul
Copyright 2006 Nils Radtke, Oliver Kopp
Copyright 2007-2017 Oliver Kopp
Copyright 2012-2017 Kai Mindermann
Copyright 2012 Niklas Schnelle

  [computer science institutes of the University of Stuttgart]: http://www.informatik.uni-stuttgart.de/index.en.html
