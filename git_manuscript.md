# git: A powerful tool to facilitate greater reproducibility and transparency in science.

**Karthik Ram**, Ph.D.  
Environmental Science, Policy, and Management.  
University of California, Berkeley.  
Berkeley, CA 94720. USA.  
[karthik.ram@berkeley.edu](mailto:karthik.ram@berkeley.edu)

## Abstract  
Reproducibility is the hallmark of good science [@Vink2012b]. Maintaining a high degree of transparency in scientific publications is essential not just for gaining trust and credibility within the scientific community but also essential for facilitating novel science. Sharing data and computer code associated with publications is becoming increasingly common, motivated partly in response to data deposition requirements from journals and mandates from funders. Despite this increase in transparency, it is still difficult to reproduce or build upon the findings of most scientific publications without access to a complete workflow.

Version control systems (VCS), which have long been used to maintain code repositories in the software industry, are now finding new applications in science [@citation_for_vcs]. One such open-source VCS, **git**, provides a robust framework that allows scientists to track every component (data, code, figures, and text) of a research endeavor from start to finish, with the ability to revert any file or an entire project back to any stage in
its development. Since the system is decentralized, every copy of a repository not only contains all the data and code but also the entire history of changes along with detailed notes documenting each of those decisions. The power of a git repository can be further extended by linking it to one or more git hosting services (e.g. GitHub, BitBucket, self-hosted) which makes it easy for multiple collaborators to work asynchronously and merge their changes as needed. A git based workflow is particularly suited for science because it is designed to protect against data loss, quickly retrace errors, and allow multiple ideas and methods to co-exist in parallel.

In this paper I review how git benefits science and why more scientists should make git-based workflows an integral part of their research. I also provide use-cases demonstrating how git repositories can foster collaborations, increase accountability, track contributions, in addition to lowering barriers to data reuse and supporting novel synthesis.

# Introduction

One of the original motivations behind publishing scientific articles was to ensure that results could be reproduced, validated and extended. Articles with detailed methods sections were necessary not just for evaluating the soundness of the central findings but also to ensure that readers could validate such findings and improve upon them. Over time, the scientific process has become quite complex, requiring increasing amounts of data collected using complex methods. The volume of research has also grown considerably over the years, resulting in a shortening of the length of articles (first because space was limiting in publications but later continued even though e-papers don't have any limitations). Now most papers contain brief methods. To reproduce the central findings of any paper, a reader not only requires access to detailed methods, but also the underlying data and code used to arrive at them. While this practice has become more common, there are several problem. Many articles still do not share their data and or code. There is also the problem that they are not shared in adequate detail (derived data versus raw data) or all authors do not share all the decisions they used to arrive at their final conclusions. So, some decisions, such as removing outliers, may not be adequately in the steps.

Science is supposed to be reproducible. We shared all the relevant details necessary for someone else to reproduce, validate, or build upon existing findings. As technology has improved, so has the software and the size of data. These days methods sections are fairly short and rarely provide sufficient detail to reproduce the central findings, or build upon them. Even when sufficient raw materials are shared, producing a manuscript requires a research team to make several small decisions that are often relegated to lab
notebooks and rarely available for review. Some of these decisions could be vital, such as deciding to subset data, remove outliers, and or choosing one type of statistical model over another. Even if a researcher is open to sharing these types of information, there is often no venue to do so. Thus, we need a more robust way to share all the decisions that result in a manuscript, along with all the assets (code, data, and …).

## Version control systems
Version control systems have been used in software development for code review, and as a way to capture the entire provenance of a project. Each commit (or snapshot) also provides a way point that allows one to explore new methods and ideas and quickly revert if this results in a dead end. It also allows for new methods to be explored side by side, in different branches. Thus, when sharing a git-managed repository, all of these nuances are also shared alongside.

But there are several challenges with traditional VCS. For one, they tend to rely on a central server. Without a connection to the server, it would be impossibel to get much done. If this was a 3rd party service, then there is no guarauntee that the service would persist. More recently, a relatively new DVCS, git has taken over as the widely used one. Judging from the number of public repositories hosted by GitHub, a popular git hosting service, there is a poplar trend. While the tool was build with the idea of supporting software development, many of its characteristics are ideally suited for science. In this article I argue that git is ideal to manage day to day scentific activities such as gathering data, writing manuscripts, analyzing data and visualizing the results. Used correctly, git could make more research easily reprodicible and accessible, improve transparency because one could verify results and retrace steps that might have led to errors, and also build upon from the right point (e.g. where one might require data in a raw, untransformed state). 

## Why git?

Various version control systems have existed for a long time. A common feature in most VCS is that they are centralized, which means that one has to checkout a copy from a central repository, make changes, and check those back into the central repository. 
Version control systems have existed in various forms over the years. A common feature with most is the existance of a central repository from which people checkout copies, contribute changes, then commit. git differs in that the process is decentralized. when the main hub is unavailable, a user can still get work done. 

1.  The process is distributed. So any of the collaborators are free to work asynchronously and merge their changes as needed.

2.  By linking a git repo to a remote git hosting service, it serves both as a backup but also as a central point where multiple contributors can synchronize their changes. Unlike using track changes in Microsoft Word where the history of changes and the authors who proposed them are lost once accepted or rejected, in this case git preserves authorship and can even be used to track contributions over time.

3. git supports a very flexible branching model, which means that it supports efforts to explore various ideas and methods in a managable way without an unmanagable proliferation or files or no way to keep track of them.

# Advantages of git as a tool to manage scientific workflows
 
Rather than managing individual files, `git` works at the folder level and should be initialized in the root folder for any project. Below I outline reasons why git is particularly suited for science: 
`git` manages projects at the folder level. So for any research endeavor, one simply has to initialize a git instance at the root folder like so:


## 1. git logs as a Lab Notebook
Since git requires a description (referred to as commit message) to accompany each commit, over time these messages can serve as a human-friendly log of changes that occured over the course of a project. While lab notesbooks are a wealth of information, they are rarely available alongside a publication or to members outside of that lab. Since the git history is always part of the repository, anyone with a copy can search, query, and browse this history of changes without access to original lab notebook entries.  
A common method for ad-hoc versioning in research settings is to duplicate files with semi-informative names (like `data-old`) but over time these become impossible to track or revisit without a detailed record or history. With git on the other hand, with each addition, such as new data, new lab entries, new text for a manuscript, git captures those changes making it easier to compare versions and see notes. And since each copy of a repo carries the entire history of notes, someone trying to build upon this work can easily see what decisions were made at each stage of a projects' evolution and decide where to branch from. 

##  4. Tracks Collaboration
Collaborators can share write-access to a git repository and push changes asynchronously. In other cases, a single user can retain ownership and allow others to fork a copy, and submit pull-requests.  
A git hosting service allows multiple collaborators to work asynchronously without having to wait on anyone else. As they finish meaningful contributions, local changes can be merged with a remote copy. While most merges will be automatic, edits to the same lines will require manual intervention. In papers where I have collaborates with other scientists, the lead author creates a repository on github, and every contributor `forks` a copy to edit. As they incorporate their individual contribtions, authors can send `pull requests`, which are requests to merge both copies at the discretion of the lead author. Authors can update their copies from the original branch anytime to keep up with changes merged from other pull requests. This workflow allows lead authors to manage how and when individual contributions get merged into the master copy of a manuscript. In a recent paper led by Philippe Desjardins [https://github.com/PhDP/article_preprint/network](https://github.com/PhDP/article_preprint/network), we followed this exact protocol.

![Figure 1: A network graph showing list of collaborators and their contributions to a project](collaboration.png)

![Figure 2: git makes it easy to track individual contribtions through time which helps track effort and maintain accountability](preprint.png)


##  4. Backup/failsafe
Storing local copies without adequate backups, or hosting data and code on lab websites are often unreliable. Data can lost due to accidents, computer failures, and changes in web pages can result in 404 over time. Using a git repository provides a remote backup during the course of the project. Although none of the existing git remotes are members of CLOCKSS, where membership gaurantees permanent archiving, upon compeltion of a project one could easily zip up a git repository and store in a repository such as figshare, or other. These can be imported and built upon.  

Repositories can be made private during development (but released publicly upon completion). This has to be decided by the lab group and the privacy implications surrounding the data itself. Although open science is a good practice, not every lab can do this. Those labs can still leverage the power of git but keep the remote copies private and only share them with select groups of people.
4. Freedom to explore new ideas and methods
With branches, it becomes easy to explore new ideas. For example, reviewers often ask authors why they used one model over another. In a git framework, authors can test various approaches in a managable way by creating branches. In each branch they explore a different method. Ones that do not yeild productive or useful results can be left as a record without affecting the master branch which would contain the final approach chosen for the paper. Reviews  who have some familiarity with how git works can easily see these other efforts. Even if reiewvers themeselves as not git savvy, given how long review process takes, this would allow authors themselves to dig up these alternate methods quickly becuause those files are also part of the same original repo. In a non-git framework, these files would likely be deleted.

##  4. As a mechanism to solicit feedback and reviews  
git hosting services also provide added features, such as the ability to suggest changes and raise issues. Although these were originally meant to fix bugs in code, they could just as easily be used to suggest changes to blocks of text for an article, point out errors in data, and also parts of statistical analysis that a reviewer or reader might have questions about.

##  5. Transparency, verifiability
Methods sections in papers are often too short for a reader to fully grasp all the nuances of a method. By sharing a git repo, each change is documented into a robust framework that can be retreived, retraced, and even replayed. This provides an added layer of transparency that is often missing. Reviewers often have to take certain methods at face value without a clear sense for how the data are structured, what transformation were applied etc.

##  6. Managing large data 
git is suited to manage ascii data (basically csv files, plain-text).So although it can distinguish that any two binaries (such as Word documents) are different, it cannot highlight changes when comparing two versions. Also big data are not ideal for managing wiith git. In those cases, the data can be stored elsewhere (such as Amazon S3, lab servers) but with the metadata managed by git. There also also 3rd party tools such as git-annex that have been explictly designed to manage large data using git. In this case, data have their own remotes, while the rest of the contents have a regular remote. This different is transparent to the user.

## 7. Lower barriers to reuse
A git repo can make it easy for someone to branch off from a approrpiate commit (not necessarily the most current point of development) to build something new. Use that example of an open source software that resulted in a paper.
When projects are managed with git and publications are submitted to a journal several months down the line, then sharing the URL to a public copy of the repository can be extremely useful to any reader. The now public repo contains the an integrated lab notebook capturing all the decisions that were made along the way. Although other versioning tools are popular among academics, such as Dropbox, such tools do not provide rigorous version histories and a user has no control over why these versions are different. 
A use case that my research group at Berkeley often encounters is that pop (especially ones that do not deposit raw data)

# git best practices

1.  It's good to begin any project by creating a folder and initializing a git
    repo.

2.  Users should commit changes to the git history as often as needed. This frequency can be as fine grained as necessary but useful to do in meaningful blocks. For example, it makes little sense to commit each line change, but if responding to comments, this might not be a bad idea since each commit corresponds to addressing a change. One could also commit in a fine grained manner but rebase (in other words consolidate) groups of commits with meaningful messages (e..g Edited the Introduction for the paper and added in
    references).

3.  Push changes to a remote repository before moving on to other projects. This serves two purposes. Other collaborators can now sync their local copies with these new changes and it also protects against data loss (a lab fire that that evening). 

## Conclusions  

The power of the git version control system could be extremely beneficial to science. By managing projects with git right from the start, and regularly documenting additions and changes to the projects over time, researchers can ensure that all decisions made over the course of a project are securely stored in a format that can easily be viewed, and queried. Further, unlike lab notebooks which are not often accessible to everyone, a git repository carries the full history of changes with each copy. Because it works in decentralized format, loss or theft of any single computer will not result in catastrophic data loss. The use of GitHub as a remote, with regular syncs will ensure that a current copy can be retrieved from anywhere. If possible, including a link to a github repo in submitted manuscripts provides the transparency that reviewers often wish for. A git savvy reviewer could make much better decisions, rather than relying on incomplete information presented in methods sections. I wrote this manuscript as a git repository right from the beginning and a copy is available at: [https://github.com/karthikram/smb_git.git](https://github.com/karthikram/smb_git.git)

## Acknowledgements  
I was supported by NSF DEB DEB-`1021553` while preparing this manuscript. Comments from ... on earlier drafts greatly improved the final version of this article. This manuscript is available as a git repository (with a full history of changes) [https://github.com/karthikram/smb_git.git](https://github.com/karthikram/smb_git.git) along with a permanent archive on figshare (http://figshare.com/) (I'll add a link to figshare URI once a final version of the paper is accepted).

## Literature Cited  


