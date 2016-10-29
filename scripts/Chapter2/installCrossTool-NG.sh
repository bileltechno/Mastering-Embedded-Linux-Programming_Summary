#!/bin/sh

echo "    Installing dependencies"
sudo apt-get install automake bison chrpath flex g++ git gperf gawk libexpat1-dev libncurses5-dev libsdl1.2-dev libtool python2.7-dev texinfo help2man

echo "    Downloading CrossTool-NG 1.22.0, PLZ check if it the last version or not"
wget http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.22.0.tar.bz2

echo "    Decompress CrossTool-NG 1.22.0"
tar xf crosstool-ng-1.20.0.tar.bz2

cd crosstool-ng-1.20.0

echo "    Configuring CrossTool-NG 1.22.0"
./configure --enable-local

echo "    Installing CrossTool-NG 1.22.0"
make

make install
