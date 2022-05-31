#!/bin/sh

WHOAMI=$USER
echo "Username: $USER"
DATE=$(date +'%m%d%Y')
echo "Date: $DATE"
TIME=$(date "+%T")
echo "Time: $TIME"
CWD=$(pwd)
echo "Current path is: $CWD"
HFD=$(ls | wc -l)
echo "Number of files: $HFD"
BFD=$(du -ahx | sort -rh | head -1)
echo "The biggest file is: $BFD"
