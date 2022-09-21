#!/bin/bash

#parameters
debug=1
destination="/Volumes/1101-data/1001-data/1001-digital-index/"
filename1=$(date +%Y%m%d)-$1-find.log
filename2=$(date +%Y%m%d)-$1-ls.log
filename3=$(date +%Y%m%d)-$1-du.log
filename4=$(date +%Y%m%d)-$1-du-d4.log
filename5=$(date +%Y%m%d)-$1.ncdu

command1="find /Volumes/$1 -type f > ${destination}$filename1"
command2="ls -lahR /Volumes/$1/ > ${destination}$filename2"
command3="du -h /Volumes/$1 > ${destination}$filename3"
command4="du -d 4 -h /Volumes/$1 > ${destination}$filename4"
command5="ncdu -o ${destination}$filename5 /Volumes/$1/"

echo "(debug) command=$0"
echo "(debug) origin=$1"
echo "(debug) destination=$destination"
echo "(debug) filename1=$filename1"
echo ""
echo ""

#$command1
echo "(debug) command1=$command1"
find /Volumes/$1 -type f > ${destination}$filename1

echo "(debug) command2=$command2"
ls -lahR /Volumes/$1/ > ${destination}$filename2

echo "(debug) command3=$command3"
du -h /Volumes/$1 > ${destination}$filename3

echo "(debug) command4=$command4"
du -d 4 -h /Volumes/$1 > ${destination}$filename4

echo "(debug) command5=$command5"
ncdu -o ${destination}$filename5 /Volumes/$1/
