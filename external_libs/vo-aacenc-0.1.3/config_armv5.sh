#!/bin/bash
NDK=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
PLATFORM=$NDK/platforms/android-17/arch-arm

export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:

export LDFLAGS="-L$PLATFORM/usr/lib"
export CFLAGS="-I$PLATFORM/usr/include"

export CPPFLAGS="$CFLAGS"
export CFLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$LDFLAGS"

export AS=$PREBUILT/bin/arm-linux-androideabi-as
export LD=$PREBUILT/bin/arm-linux-androideabi-ld
export CXX="$PREBUILT/bin/arm-linux-androideabi-g++ --sysroot=${PLATFORM}"
export CC="$PREBUILT/bin/arm-linux-androideabi-gcc --sysroot=${PLATFORM} -march=armv5"
export NM=$PREBUILT/bin/arm-linux-androideabi-nm
export STRIP=$PREBUILT/bin/arm-linux-androideabi-strip
export RANLIB=$PREBUILT/bin/arm-linux-androideabi-ranlib
export AR=$PREBUILT/bin/arm-linux-androideabi-ar

./configure --host=arm-linux \
--enable-static \
--disable-shared \
--prefix=/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/external_libs/vo-aacenc-0.1.3/build/armv5/

make clean
make -j8
make install
