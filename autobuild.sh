#!/bin/sh

set -e
set -v

contentdir=$AUTOBUILD_INSTALL_ROOT/share/publican/Common_Content

make clean contentdir=$contentdir

make contentdir=$contentdir

if [ -x /usr/bin/rpmbuild ]
then
   make rpm contentdir=$contentdir
fi
