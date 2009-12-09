#!/bin/sh
set -e
set -x

aclocal -I m4
automake --add-missing --copy
autoconf
./configure --enable-maintainer-mode $*
