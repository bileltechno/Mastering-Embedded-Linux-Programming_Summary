#!/bin/sh

echo "\t \t \t Downloading SQLite's Source code ~ 2.5 Mo ... "
wget https://sqlite.org/2016/sqlite-autoconf-3150000.tar.gz #> /dev/null 2>&1

echo "\t \t \t Extracting  SQLite's Source code ... "
tar xf sqlite-autoconf-3150000.tar.gz > /dev/null 2>&1

cd sqlite-autoconf-3150000


CC=~/x-tools/arm-cortex_a8-linux-gnueabihf/bin/arm-cortex_a8-linux-gnueabihf-gcc ./configure --host=arm-cortex_a8-linux-gnueabihf 
make 

echo "\t \t \t Installing SQLite  ... "
make DESTDIR=$(~/x-tools/arm-cortex_a8-linux-gnueabihf/bin/arm-cortex_a8-linux-gnueabihf-gcc -print-sysroot) install > /dev/null 2>&1 && echo "\t \t \t SQLite  is successfully installed ... "

tree ~/x-tools/arm-cortex_a8-linux-gnueabihf/arm-cortex_a8-linux-gnueabihf/sysroot/usr/local/
