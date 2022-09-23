#!/bin/bash

#parameters
debug=1
github-token="/mnt/smb1/library/ssh-keygen/jalcoriza-github.token"
command="git push https://${github-token}@github.com/jalcoriza/$1.git master"

# debug info
echo "(debug) usage: $0 <github-reposotory>
echo "(debug) command=$0"
echo "(debug) github-repository=$1"
echo ""
echo ""
echo "(debug) full command=$command"
echo ""
echo ""

# execute command
#git push https://${github-token}@github.com/jalcoriza/bash-scripts.git master
