#!/usr/bin/env bash
echo "Running as $(whoami)"
addgroup -g 7447 abcd
adduser -u 7447 -G abcd -s /bin/sh -D abcd
addgroup --system --gid 7447 abcd && adduser -rms /bin/bash --uid 7447 --gid 7447 abcd --create-home
echo "ls -l /home/abcd..."
ls -l /home/abcd
echo "ls -l /home/abcd/myfolder..."
ls -l /home/abcd/myfolder
echo "Creating directory and copying files..."
mkdir -pv /home/abcd/myfolder/mytestfolder
#echo "Sample text file" > /home/abcd/myfolder/mytestfolder/file1.txt
#echo "Another text file" > /home/abcd/myfolder/mytestfolder/file2.txt
#echo "file created /home/abcd/myfolder/mytestfolder/file1.txt"
#echo "file created /home/abcd/myfolder/mytestfolder/file2.txt"
chown -R abcd:abcd /home/abcd
echo "listing /home/abcd"
ls -l /home/abcd
chown -R abcd:abcd /home/abcd/myfolder
echo "listing /home/abcd/myfolder"
ls -l /home/abcd/myfolder/
chown -R abcd:abcd /home/abcd/myfolder/mytestfolder
echo "listing /home/abcd/myfolder/mytestfolder"
ls -l /home/abcd/myfolder/mytestfolder