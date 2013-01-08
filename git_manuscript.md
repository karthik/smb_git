# git: A powerful tool to facilitate greater reproducibility and transparency in science.  

__Karthik Ram__  
Environmental Science, Policy, and Management.  
University of California, Berkeley.  
Berkeley, CA 94720. USA.  
[karthik.ram@gmail.com](mailto:karthik.ram@gmail.com)


## Abstract  

Reproducibility is the hallmark of good science and maintaining a high degree of transparency in scientific publications is essential not just for gaining trust and credibility but also to faciliate development of novel science. Sharing data and computer code associated with publications is becoming increasingly common, motivated partly in response to data deposition requirements from journals and mandates from funders. Despite this increase in transparency, it is still difficult to reproduce or build upon the central finding of a scientific publication without access to a complete workflow.  

Version control systems (VCS), which have long been used to maintain code repositories in the software industry, are now finding applications in science. One such open-source VCS, **git**, provides a robust framework that allows scientists to track every component (data, code, figures, and text) of a research endeavor from start to finish, with the ability to revert any file or an entire project back to any stage in its development. Since the system is decentralized, every copy of a project carries the entire history of changes along with researcher notes documenting those decisions. Git repositories can be linked to git hosting services making it simple for numerous collaborators to work asynchronously and merge their changes as needed. 

+ if a decision resulted in an error, one could quickly retrace steps and recover work from that point forard.
+ easy to branch and explroe new ideas.
+ new collaborators get a copy of all changes.
+ anyone else can clone a copy

The entire project (or any single file) can be also be branched off from any of these points to explore new methods or models. Unlike other version control systems, git is decentralized which means that the entire history of the project is included in every copy, and any collaborator is free to work asynchronously and merge their changes as needed or allow them to co-exist in parallel branches. git hosting services such as GitHub have made it effortless to distribute publications along with software, code and data and easily sync their with collaborators. GitHub also allows other scientists to clone a copy to build further on this work.

3. Hosted git services allow several researchers to work asynchronously and synchronize their efforts through a central server. Users can work asynchronously and merge their copies as necessary. 

Development on a project, a user can commit changes up to that point with a human-friendly message. This allows anyone to return the project to that state or pursue a different direction along a different branch. Thus, key decisions that may serious affect the trajectory of a paper can be quickly retraced (to either improve upon, pursue a different direction, or troubleshoot errors).

A git managed research folder also allows members within the lab to reuse methods and easily determine why certain decisions were made during the course of the project.

Much like a lab notebook, a git history, tracks the evolution of a research efforts with waypoints and notes that allow both the original researcher (and anyone else down the line) to retrace steps, pursue a different direction, or build something new from any point forward.

Unlike track changes in Word documents, git can keep track of contributions from unlimited authors maintaining an audit trail.

It also allows for soliciting feedback.

4. In this paper I review how git benefits science and why more scientists should make a git-based workflow an integral part of their day to day research. I also provide several real world use-cases for how git workflows can foster collaboration, increase accountability, track contributions, in addition to lowering barriers to data reuse and novel synthesis.


## extra notes that could be incorporated above.
 
allows for error checking, revising the results with new assumptions by branching off from some point.
 
 
This allows others to revisit changes and decisions made at any stage of the effort, the ability to branch off from an earlier point in the effort, or explore a new direction before certain key decisions were made during the evolution of the project.

The power of git can be further extended by linking a repository to a remote repo hosting service such as github. Unlike centralized VCS, anyone is free to work on their existing copy without having to check out a current version from the central repo. This allows multiple authors to work asynchronosly and merge changes as needed and as posssible. Although git can merge most changes seamlessly, in cases where it cannot automatically merged, git leaves placeholders for any author to go in and resolve it manually. Doing so, along with meaninful commit messages makes it a valuable way to document author contributions and assign credit at a fine grained level.

Even with the manuscript writing process alone, it allows for easy collaboration.

 It is robust, not prone to a single point of failure, favors collaboration, and easily allows anyone to branch off from the most current iteration of the project or from any point along the way. Also it allows scientists to explore multiple directions and yet keep everything manageable and accountable. git can also automatically sync to a remote repository hosting service such as GitHub or BitBucket, providing additional fail safes against data loss. Since these services have a large userbase, it becomes extremely easy to add collaborators, and receive contributions from other viewers. In this manuscript, I outline some of the reasons why more scientists, particularly bioinformaticians need to incorporate git into their regular academic workflow. I also include a few examples of how a successful collaboration could work.



