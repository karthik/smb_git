# Git: A powerful tool to facilitate greater reproducibility and transparency in science. 
Author(s): [Karthik Ram](mailto:karthik.ram@gmail.com)  
Target Journal: [Source Code in Medicine and Biology](http://www.scfbm.org/)

**Git** is a powerful version control system that is widely used in software development. The features of Git that make it popular among software developers also makes it ideal for managing research workflows. In this article I describe how the power of Git could be leveraged in a scientific context to improve reproduciblity, increase transparency, and make it easy for others to build upon existing work. I also provide a handful of real-world use cases describing how Git and Git hosting services such as GitHub can enhance collaborative efforts, lower barriers to data re-use, and accelerate development of new ideas.

This manuscript is currently an early draft. Comments and suggestions are quite welcome either as [issues](https://github.com/karthikram/smb_git/issues/new) or via [email](mailto:karthik.ram@gmail.com).

* [raw manuscript source in markdown](https://github.com/karthikram/smb_git/blob/master/git_manuscript.md) (figure captions and citations not rendered in this version)
* [Draft PDF](https://github.com/karthikram/smb_Git/blob/master/Git_manuscript.pdf?raw=true) (contains parsed citations and figure captions)
* [Bibliography](https://github.com/karthikram/smb_Git/blob/master/Git_ms.bib) 

## Compiling the manuscript

I'm using [`Pandoc`](http://johnmacfarlane.net/pandoc/) as the document generator. Once installed, run:

```
pandoc -H margins.sty --bibliography Git_ms.bib --csl plos.csl Git_manuscript.md -o Git_manuscript.pdf
```

## Citing this pre-print

This article has now been accepted for publication at **Source Code in Medicine and Biology** (2/6/13). Until a full citation becomes available please cite this pre-print as follows:

```
 Ram: Git can facilitate greater reproducibility and increased transparency in science. Source Code for Biology and Medicine 2013 8:7.
```

[Uncorrected proofs](1492426133899656_uncorrected.pdf)
