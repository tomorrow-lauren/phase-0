How does tracking and adding changes make developers' lives easier?

It means if you're going a long and something goes wrong you can work from your previous changes.

What is a commit?

It's a save, a published record of the changes thus far.

What are the best practices for commit messages?

Organize them. State your changes clearly. Format them so that they appear legible.

What does the HEAD^ argument mean?

It's the commit you are on. HEAD^ thakes you back to the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

Write a handy cheatsheet of the commands you need to commit your changes?

git commit -m "message"

git checkout master

git pull origin master

git checkout feature-branch-name to navigate your feature branch

git merge master

What is a pull request and how do you create and merge one?

Use "git pull origin master" to a file to your local machine. then you can merge it by checking out the branch and 
merging it. then you push it to GH.

Why are pull requests preferred when working with teams?

Because then everyone can make a local copy, edit and push, and then everyone can edit the same document. All changes are logged so you know who wrote what.
