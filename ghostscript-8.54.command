#!/bin/bash

./configure --prefix=/W
make && make install
cp Makefile Makefile.old
cp scr/macosx.mak Makefile
make framework
sudo cp sobin/Ghostscript.framework /Library/Frameworks/
cp Makefile.old Makefile

