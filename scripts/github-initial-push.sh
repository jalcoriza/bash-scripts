#!/bin/bash

#parameters
debug=1
github_token="/mnt/smb1/library/ssh-keygen/jalcoriza-github.token"
command1="git push https://${github_token}@github.com/jalcoriza/$1.git master"
command2="git push --set-upstream https://${github_token}@github.com/jalcoriza/$1.git master"

# debug info
echo "(debug) usage: $0 <github-reposotory>"
echo "(debug) command=$0"
echo "(debug) github-repository=$1"
echo ""
echo ""
echo "(debug) full command=$command1"
echo "(debug) full command=$command2"
echo ""
echo ""

# execute command
#git push https://${github_token}@github.com/jalcoriza/bash-scripts.git master
#git push --set-upstream https://${github_token}@github.com/jalcoriza/$1.git master
