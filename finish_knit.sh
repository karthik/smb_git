pandoc -H margins.sty git_manuscript.tex -o git_manuscript.pdf
pdfcat git_manuscript.pdf list_of_figures.pdf > final_ms.pdf
