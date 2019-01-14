SRCPATH=.
prefix=/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/external_libs/libx264/build/armv5/
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=ARM
SYS=LINUX
CC=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-gcc
CFLAGS=-Wshadow -O3 -fno-fast-math  -Wall -I. -I$(SRCPATH) --sysroot=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/platforms/android-17/arch-arm -std=gnu99 -fPIC -fomit-frame-pointer -fno-tree-vectorize
DEPMM=-MM -g0
DEPMT=-MT
LD=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-gcc -o 
LDFLAGS= --sysroot=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/platforms/android-17/arch-arm -lm -lc -ldl
LIBX264=libx264.a
AR=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ar rc 
RANLIB=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-ranlib
STRIP=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-strip
INSTALL=install
AS=
ASFLAGS= -DHAVE_ALIGNED_STACK=1 -DPIC -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
default: lib-static
install: install-lib-static
LDFLAGSCLI = -ldl 
CLI_LIBX264 = $(LIBX264)
