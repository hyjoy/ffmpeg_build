#!/bin/bash
NDK=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b
PREBUILT=$NDK/toolchains/x86-4.9/prebuilt/darwin-x86_64
PLATFORM=$NDK/platforms/android-17/arch-x86

export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:

export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-I$PLATFORM/usr/include"

export CPPFLAGS="$CFLAGS"
export CFLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$LDFLAGS"

export AS=$PREBUILT/bin/i686-linux-android-as
export LD=$PREBUILT/bin/i686-linux-android-ld
export CXX="$PREBUILT/bin/i686-linux-android-g++ --sysroot=${PLATFORM}"
export CC="$PREBUILT/bin/i686-linux-android-gcc --sysroot=${PLATFORM} -march=i686"
export NM=$PREBUILT/bin/i686-linux-android-nm
export STRIP=$PREBUILT/bin/i686-linux-android-strip
export RANLIB=$PREBUILT/bin/i686-linux-android-ranlib
export AR=$PREBUILT/bin/i686-linux-android-ar

./configure --host=x86-linux \
--enable-static \
--disable-shared \
--prefix=/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/external_libs/vo-aacenc-0.1.3/build/x86/ \


make clean
make -j8
make install
