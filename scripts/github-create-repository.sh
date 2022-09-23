#!/bin/bash

#parameters
debug=1
github-header="/mnt/smb1/library/ssh-keygen/jalcoriza-github.header"
command="curl -v -i -H @${github-header} --data '{"name": "$1"}' https://api.github.com/user/repos"

# debug info
echo "(debug) usage: $0 <github-repository>"
echo "(debug) command=$0"
echo "(debug) github-repository=$1"
echo ""
echo ""
echo "(debug) full command=$command"

# execute command
#curl -v -i -H @${github-header} --data '{"name": "$1"}' https://api.github.com/user/repos

