#!/bin/bash
NDK_HOME=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b
PREBUILT=$NDK_HOME/toolchains/x86-4.9/prebuilt/darwin-x86_64
PLATFORM=$NDK_HOME/platforms/android-17/arch-x86

# export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:

# export LDFLAGS="-L$PLATFORM/usr/lib"
# export CFLAGS="-I$PLATFORM/usr/include"

# export CPPFLAGS="$CFLAGS"
# export CFLAGS="$CFLAGS"
# export CXXFLAGS="$CFLAGS"
# export LDFLAGS="$LDFLAGS"

# export AS=$PREBUILT/bin/i686-linux-android-as
# export LD=$PREBUILT/bin/i686-linux-android-ld
# export CXX="$PREBUILT/bin/i686-linux-android-g++ --sysroot=${PLATFORM}"
# export CC="$PREBUILT/bin/i686-linux-android-gcc --sysroot=${PLATFORM}"
# export NM=$PREBUILT/bin/i686-linux-android-nm
# export STRIP=$PREBUILT/bin/i686-linux-android-strip
# export RANLIB=$PREBUILT/bin/i686-linux-android-ranlib
# export AR=$PREBUILT/bin/i686-linux-android-ar

./configure --host=x86-linux \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--sysroot=$PLATFORM \
--cross-prefix=$PREBUILT/bin/i686-linux-android- \
--prefix='/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/external_libs/libx264/build/x86'

make clean
make -j8
make install

