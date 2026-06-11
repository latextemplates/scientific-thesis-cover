#!/usr/bin/env bash
# Build the CTAN submission archive (scientific-thesis-cover.tar.gz).
#
# Linux/CI port of release.bat. Requires: a TeX Live with pdflatex and
# ctanify (see tl_packages_ctan), pandoc, and the Perl module
# File::Copy::Recursive (Debian/Ubuntu: libfile-copy-recursive-perl) that
# ctanify depends on. The GitHub Actions workflow .github/workflows/ctan.yml
# provides all of these.
set -e

# Generate demo.pdf
pdflatex -interaction=nonstopmode -halt-on-error demo.tex

# Generate scientific-thesis-cover.pdf out of README.md.
# Drop the badge/SVG lines first; they do not convert to a PDF.
cp README.md scientific-thesis-cover.md
sed -i 's/.*svg.*//' scientific-thesis-cover.md
pandoc -f gfm-hard_line_breaks -t latex --pdf-engine=pdflatex \
	scientific-thesis-cover.md -o scientific-thesis-cover.pdf

# Bundle everything for CTAN (no auto-detected deps, no TDS zip)
ctanify --noauto --notds \
	README.md CHANGELOG.md \
	scientific-thesis-cover.sty scientific-thesis-cover.pdf \
	demo.tex demo.pdf \
	release.bat release.sh
