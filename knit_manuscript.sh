# copy the latest bibliography from Mendeley's export
cp ~/Documents/Work/Reference/BibTex/git_ms.bib .
pandoc -H margins.sty --bibliography git_ms.bib git_manuscript.md -o git_manuscript.pdf
