#!/bin/bash

# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!
echo "Removing old packages"
rm -rf ../packages/*
echo "Building new packages"
dpkg-deb --build 

mv -f *.deb ../packages
echo "Done."
