# discard changes: 
git reset --hard

# delete local branch:
git branch -d localBranchName

# delete remote branch:
git push origin --delete remoteBranchName

# see all branches, local and remote:
git branch -a

# checkout existing branch:
git checkout existingBranchName

# create new branch and switch to it:
git checkout -b newBranchName

# push new branch to remote
git push -u origin newBranchName

# rename current branch:
git branch -m newName

# rename a different branch than the current:
git branch -m oldBranchName newBranchName

# push renamed branch to remote, and rename remote branch (same command as above):
git push -u origin newBranchName

# show commit log (n is an integer )
git log -n

# Create a custom command to add and commitcd vs
:
git config --global alias.ac '!git add -A && git commit'

# Use the custom command:
git ac -m "The message"

# Add a remote to an initialized local repo (usage: git remote origin https://github.com/user/repoName.git):
git remote add remoteName urlToRepoDotGit

# Update local list of remote branches:
git remote update origin --prune
