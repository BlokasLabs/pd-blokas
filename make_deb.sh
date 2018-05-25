#!/bin/sh
./build.sh

BUILD_DIR=build/release
TARGET_DIR=debian/usr/lib/pd/extra/blokas

mkdir -p $TARGET_DIR
cp -p $BUILD_DIR/lib/*.so $TARGET_DIR/
cp -p $BUILD_DIR/lib/*.pd_linux $TARGET_DIR/

gzip --best -n ./debian/usr/share/doc/pd-blokas/changelog ./debian/usr/share/doc/pd-blokas/changelog.Debian
fakeroot dpkg --build debian
mv debian.deb pd-blokas.deb
gunzip `find . | grep gz` > /dev/null 2>&1

