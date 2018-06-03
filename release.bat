@echo off

rem Generate deml.pdf
pdflatex demo

rem Generate scientific-thesis-cover.pdf out of README.md
copy README.md scientific-thesis-cover.md
sed -i "s/.*svg.*//" scientific-thesis-cover.md
pandoc -f markdown_github-hard_line_breaks -t latex scientific-thesis-cover.md -o scientific-thesis-cover.pdf

ctanify --noauto --notds README.md CHANGELOG.md scientific-thesis-cover.sty scientific-thesis-cover.pdf demo.tex demo.pdf release.bat
