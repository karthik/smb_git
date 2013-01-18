# copy the latest bibliography from Mendeley's export
cp ~/Documents/Work/Reference/BibTex/git_ms.bib .
# Ignoring citation style for now
# pandoc -H margins.sty --bibliography git_ms.bib --csl bioinformatics.csl git_manuscript.md -o git_manuscript.pdf
pandoc -H margins.sty --bibliography git_ms.bib --csl plos.csl git_manuscript.md -o git_manuscript.pdf
