#!/bin/sh

set -e

PREFIX=/usr

if [ ! -w $PREFIX/lib ] || [ ! -w $PREFIX/include ];
then
	PREFIX=~/.ft
fi
echo "Install in prefix : $PREFIX"
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include
echo "Install librarys ..."
mv $1 $PREFIX/lib
mkdir -p $PREFIX/$2
echo "Install includes ..."
cp $2/common.h $PREFIX/$2
rm -rf $3
