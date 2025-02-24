#!/usr/bin/env bash
echo "Running as $(whoami)"
addgroup -g 7447 abcd
adduser -u 7447 -G abcd -s /bin/sh -D abcd
addgroup --system --gid 7447 abcd && adduser -rms /bin/bash --uid 7447 --gid 7447 abcd --create-home
mkdir -pv /home/abcd/myfolder
echo "Listing contents in /home/abcd/myfolder"
ls -l /home/abcd/myfolder/
echo "listing /home/abcd/myfolder/mytestfolder"
ls -l /home/abcd/myfolder/mytestfolder
echo "main container file" > /home/abcd/myfolder/maincontainerfile1.txt
#chown -R abcd:abcd /home/abcd/myfolder
echo "file created /home/abcd/myfolder/maincontainerfile1.txt"
echo "Listing contents in /home/abcd/myfolder"
ls -l /home/abcd/myfolder/
echo "listing /home/abcd/myfolder/mytestfolder"
ls -l /home/abcd/myfolder/mytestfolder
sleep 3600