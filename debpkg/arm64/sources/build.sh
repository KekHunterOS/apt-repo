#!/bin/bash

# THIS SCRIPT IS MADE BY HILLEDKINGED AND IS BEIGN USED BY HILLEDKINGED!!!
echo "Removing old packages"
rm -rf ../packages/*
echo "Building new packages"
dpkg-deb --build openjdk-8-jdk
dpkg-deb --build openjdk-8-jdk-headless
dpkg-deb --build openjdk-8-jre
dpkg-deb --build openjdk-8-jre-headless
dpkg-deb --build pyrit
dpkg-deb --build python-crypto
dpkg-deb --build python-cryptography
dpkg-deb --build python-lxml
dpkg-deb --build python-markupsafe
dpkg-deb --build python-msgpack
dpkg-deb --build python-netfilterqueue
dpkg-deb --build python-nfqueue
dpkg-deb --build python-pcapy
dpkg-deb --build python-pil
dpkg-deb --build python-scandir
dpkg-deb --build python-twisted-bin
dpkg-deb --build python-yaml
dpkg-deb --build python-zope.interface
mv -f *.deb ../packages
echo "Done."
