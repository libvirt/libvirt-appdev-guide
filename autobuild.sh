#!/bin/sh

set -e
set -v

contentdir=$AUTOBUILD_INSTALL_ROOT/share/publican/Common_Content

rm -rf html
make clean contentdir=$contentdir

make contentdir=$contentdir
mv tmp/en-US/html html

if [ -x /usr/bin/rpmbuild ]
then
   make rpm contentdir=$contentdir
fi
