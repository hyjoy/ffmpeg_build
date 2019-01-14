#!/bin/bash
#Type Your NDK Root Path
NDK=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
PLATFORM=$NDK/platforms/android-17/arch-arm
export PATH=$PATH:$PREBUILT/bin:$PLATFORM/usr/include:

#export LDFLAGS="-nostdlib -Bdynamic -Wl,--whole-archive -Wl,--no-undefined -Wl,-z,noexecstack  -Wl,-z,nocopyreloc -Wl,-soname,/system/lib/libz.so -Wl,-rpath-link=$ARM_LIB,-dynamic-linker=/system/bin/linker -L$PLATFORM/usr/lib -L$PREBUILT/arm-linux-androideabi/lib -L$NDK/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi -lgnustl_static -L$NDK/sources/cxx-stl/stlport/libs/armeabi -lstlport_static -lc -lgcc -lm -ldl "
#export CFLAGS="-I$NDK/sources/cxx-stl/gnu-libstdc++/4.6/include -I$NDK/sources/cxx-stl/stlport/stlport -I$PLATFORM/usr/include -fpic -DANDROID -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv5te -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP"
export LDFLAGS="-L$PLATFORM/usr/lib -L$PREBUILT/arm-linux-androideabi/lib"
export CFLAGS="-I$PLATFORM/usr/include  -fpic -mthumb-interwork -ffunction-sections -funwind-tables -fstack-protector -fno-short-enums -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  -Wno-psabi -march=armv7-a -mtune=xscale -msoft-float -mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64 -DANDROID  -Wa,--noexecstack -MMD -MP"

export CPPFLAGS="$CFLAGS"
export CFLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="$LDFLAGS"

export AS=$PREBUILT/bin/arm-linux-androideabi-as
export LD=$PREBUILT/bin/arm-linux-androideabi-ld
export CXX="$PREBUILT/bin/arm-linux-androideabi-g++ --sysroot=${PLATFORM}"
export CC="$PREBUILT/bin/arm-linux-androideabi-gcc --sysroot=${PLATFORM}"
export NM=$PREBUILT/bin/arm-linux-androideabi-nm
export STRIP=$PREBUILT/bin/arm-linux-androideabi-strip
export RANLIB=$PREBUILT/bin/arm-linux-androideabi-ranlib
export AR=$PREBUILT/bin/arm-linux-androideabi-ar

./configure --host=armv7a \
--enable-static \
--disable-shared \
--prefix=/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/external_libs/fdk-aac-2.0.0/build/armv7a/ 

make clean
make -8j & make install
