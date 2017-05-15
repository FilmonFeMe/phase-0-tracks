# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* **What is version control?  Why is it useful?**

     Version control is a mechanism in which history of changes to work (files, projects etc...) is tracked over time. This would enable to revert or check works at earlier time. It is useful in case comparisons to earlier work is needed to be done or for tracking changes and the author responsible for the change (accountability) in teams and their collaboration. 

* **What is a branch and why would you use one?**

     A branch is one diversion of the working project, so that an independent modifications or/and updates can be done to the project, which can later be merged or incorporated to the main or master work upon dealing with conflicts that may occur.This enables an experimental work to be done which might be discarded if deemed unnecessary or included to the project. It is possible to create multiple branches as necessary. 

* **What is a commit? What makes a good commit message?**

     A commit is a record of a change or update to a repository which is recorded after adding or staging. A commit is simply a history of versions of files in time. You can revert to a previous version by typing a 'git log' on the command line and copying the id of the commit you want to go to by typing 'git checkout <id>' or use 'git revert' or 'git reset' to revert to the recent work, you will then have access to the file at the given state in time or commit.A good commit message must be concise, descriptive, consistent and structured. 

* **What is a merge conflict?**

     A merge conflict is that when two branches modify the same section of a code or part of a file. Merge conflicts may often occur, and if the two branches are compared you may decide not to merge or resolve the conflict. Some GUI tools (e.g. git mergetool) are used to compare the conflict section of the code and manual editing can be done.
     