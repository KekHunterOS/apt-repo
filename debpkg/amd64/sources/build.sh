#!/bin/bash

# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!
echo "Removing old packages"
rm -rf ../packages/*
echo "Building new packages"
dpkg-deb --build openjdk-8-dbg
dpkg-deb --build openjdk-8-demo
dpkg-deb --build openjdk-8-doc
dpkg-deb --build openjdk-8-jdk
dpkg-deb --build openjdk-8-jdk-headless
dpkg-deb --build openjdk-8-jre
dpkg-deb --build openjdk-8-jre-headless
dpkg-deb --build openjdk-8-jre-zero
dpkg-deb --build openjdk-8-source


mv -f *.deb ../packages
echo "Done."
