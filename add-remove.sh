#!/bin/bash

# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!

curdir=$(pwd)
echo "Current dir is $curdir"

echo "Reuilding all packages!!"

# Arch: all
cd debpkg/all/sources
./build.sh
cd $curdir

# Arch: amd64
cd debpkg/amd64/sources
./build.sh
cd $curdir

# Arch: arm64
cd debpkg/arm64/sources
./build.sh
cd $curdir

# Arch: armhf
cd debpkg/armhf/sources
./build.sh
cd $curdir


echo "Removing old reprepro dists, pool and db"
rm -rf $curdir/dists
rm -rf $curdir/pool
rm -rf $curdir/db

echo "Adding newly built packages to repository!"

# Arch: all
# The reprepro will push these to all of the arch's
cd $curdir
reprepro includedeb kek debpkg/all/packages/*.deb

# Arch: amd64
reprepro includedeb kek debpkg/amd64/packages/*.deb

# Arch: arm64
reprepro includedeb kek debpkg/arm64/packages/*.deb

# Arch: armhf
reprepro includedeb kek debpkg/armhf/packages/*.deb

echo "Cleanup time..."

rm -rf debpkg/all/packages/*
rm -rf debpkg/arm64/packages/*
rm -rf debpkg/amd64/packages/*
rm -rf debpkg/armhf/packages/*
