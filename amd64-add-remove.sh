#!/bin/bash

# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!

#
# Current packages list openjdk-8-dbg openjdk-8-demo openjdk-8-doc openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless openjdk-8-jre-zero openjdk-8-source
# 

echo "deleting current packages by the list name"
reprepro -A amd64 --delete remove rolling openjdk-8-dbg openjdk-8-demo openjdk-8-doc openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless openjdk-8-jre-zero openjdk-8-source
echo "Adding same packages back with current list"
reprepro -A amd64 includedeb rolling ../apt-repo-source/amd64/packages/*
