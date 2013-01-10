# git: A powerful tool to facilitate greater reproducibility and transparency in science. 
Author(s): [Karthik Ram](mailto:karthik.ram@gmail.com)  
Target Journal: [Source Code in Medicine and Biology](http://www.scfbm.org/)

**git** is a powerful distributed version control system (DVCS) that is widely used in the software industry. The features of git that make it popular among software developers also makes it ideal for managing research workflows. In this article I describe how the power of git could be leveraged in a scientific context to improve reproduciblity, increase transparency, and make it easy for others to build upon existing work. I also provide a handful of real-world use cases describing how git and git hosting services such as github can enhance collaborative efforts, and lower barriers to data re-use and accelerate development of new ideas.

This manuscript is currently a work in progress. Comments and suggestions are quite welcome either as [issues](https://github.com/karthikram/smb_git/issues/new) or via [email](mailto:karthik.ram@gmail.com).

* [raw manuscript source in markdown](https://github.com/karthikram/smb_git/blob/master/git_manuscript.md)
* [Bibliography](https://github.com/karthikram/smb_git/blob/master/git_ms.bib)
* [Draft PDF](https://github.com/karthikram/smb_git/blob/master/git_abstract.pdf?raw=true)

## Compiling the manuscript

I'm using [`Pandoc`](http://johnmacfarlane.net/pandoc/) as the document generator. Once installed, run:

```
pandoc -H margins.sty --bibliography git_ms.bib git_manuscript.md -o git_manuscript.pdf
```
