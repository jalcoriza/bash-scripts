#!/bin/bash
#
# Written by Javier Alcoriza
# September 24th 2022
#

#parameters
debug=1
prefix=$3
#destination="/mnt/smb1/1001-data/1001-digital-index/"
destination="${3}/1001-data/1001-digital-index/"
filename1=$(date +%Y%m%d)-$2-find.log
filename1e=$(date +%Y%m%d)-$2-find.stderr
filename2=$(date +%Y%m%d)-$2-ls.log
filename2e=$(date +%Y%m%d)-$2-ls.stderr
filename3=$(date +%Y%m%d)-$2-du.log
filename3e=$(date +%Y%m%d)-$2-du.stderr
filename4=$(date +%Y%m%d)-$2-du-d4.log
filename4e=$(date +%Y%m%d)-$2-du-d4.stderr
filename5=$(date +%Y%m%d)-$2.ncdu
filename5e=$(date +%Y%m%d)-$2.ncdu.stderr

command1="find $1 -type f > ${destination}$filename1 2> ${destination}$filename1e"
command2="ls -lahR $1/ > ${destination}$filename2 2> ${destination}$filename2e"
command3="du -h $1 > ${destination}$filename3 2> ${destination}$filename3e"
command4="du -d 4 -h $1 > ${destination}$filename4 2> ${destination}$filename4e"
command5="ncdu -o ${destination}$filename5 $1/ 2> ${destination}$filename5e"

echo "(debug) usage: $0 <mounted_volume> <disk_name> <prefix>"
echo "(debug) example: $0 /mnt/smb1/projects jav-hd-test01 /mnt/smb1"
echo "(debug) example: $0 /mnt/smb2 jav500-03 /mnt/smb1"
echo ""
echo "(debug) command=$0"
echo "(debug) mounted_volume=$1"
echo "(debug) disk_name=$2"
echo "(debug) prefix=$3"
echo "(debug) destination=$destination"
echo "(debug) filename1=$filename1"
echo "(debug) filename2=$filename2"
echo "(debug) filename3=$filename3"
echo "(debug) filename4=$filename4"
echo "(debug) filename5=$filename5"
echo ""
echo ""

#$command1
echo "(debug) command1=$command1"
find $1 -type f > ${destination}$filename1 2> ${destination}$filename1e

echo "(debug) command2=$command2"
ls -lahR $1/ > ${destination}$filename2 2> ${destination}$filename2e

echo "(debug) command3=$command3"
du -h $1 > ${destination}$filename3 2> ${destination}$filename3e

echo "(debug) command4=$command4"
du -d 4 -h $1 > ${destination}$filename4 2> ${destination}$filename4e

echo "(debug) command5=$command5"
ncdu -o ${destination}$filename5 $1/ 2> ${destination}$filename5e
