#bin/sh

#
# Install GNU Screen
# http://www.gnu.org/software/screen/
#

DIR="/usr/local"
SRC_DIR=$DIR/src

set -ex

cd $SRC_DIR
yum install autoconf automake ncurses-devel
wget http://ftp.gnu.org/gnu/screen/screen-4.3.0.tar.gz
tar xvzf screen-4.3.0.tar.gz
cd screen-4.3.0
sh autogen.sh
./configure --prefix=/usr/local/ --enable-colors256
make
make install
