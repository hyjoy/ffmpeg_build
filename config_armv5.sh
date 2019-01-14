#!/bin/bash
NDK_HOME=/Users/hyjoy/WorkSpace/Study/ffmpeg/android-ndk-r14b
PROJECT_PATH=/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9
PREBUILT=$NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
PLATFORM=$NDK_HOME/platforms/android-17/arch-arm

VOAACENC_PATH=external_libs/vo-aacenc-0.1.3
X264_PATH=external_libs/x264-20181230
LAME_PATH=external_libs/lame-3.100
FDK_AAC_PATH=external_libs/fdk-aac-2.0.0


./configure \
--target-os=linux \
--arch=arm \
--disable-shared \
--enable-static \
--disable-stripping \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffserver \
--disable-ffprobe \
--disable-avdevice \
--disable-devices \
--disable-indevs \
--disable-outdevs \
--disable-debug \
--disable-asm \
--disable-yasm \
--disable-doc \
--enable-small \
--enable-dct \
--enable-dwt \
--enable-lsp \
--enable-mdct \
--enable-rdft \
--enable-fft \
--enable-version3 \
--enable-nonfree \
--disable-filters \
--disable-postproc \
--disable-bsfs \
--enable-bsf=aac_adtstoasc \
--enable-bsf=h264_mp4toannexb \
--disable-encoders \
--enable-encoder=pcm_s16le \
--enable-encoder=aac \
--enable-encoder=libvo_aacenc \
--disable-decoders \
--enable-decoder=aac \
--enable-decoder=mp3 \
--enable-decoder=pcm_s161e \
--disable-parsers \
--enable-parser=aac \
--disable-muxers \
--enable-muxer=flv \
--enable-muxer=wav \
--enable-muxer=adts \
--disable-demuxers \
--enable-demuxer=flv \
--enable-demuxer=wav \
--enable-demuxer=aac \
--disable-protocols \
--enable-protocol=rtmp \
--enable-protocol=file \
--enable-libfdk_aac \
--enable-gpl \
--enable-libx264 \
--enable-cross-compile \
--sysroot=$PLATFORM \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--extra-cflags="-marm -march=armv5 -I$PLATFORM/usr/include -I$VOAACENC_PATH/build/armv5/include -I$FDK_AAC_PATH/build/armv5/include -Iexternal_libs/libx264/build/armv5/include" \
--extra-ldflags="-marm -march=armv5 -L$VOAACENC_PATH/build/armv5/lib -L$FDK_AAC_PATH/build/armv5/lib -Lexternal_libs/libx264/build/armv5/lib" \
--prefix='/Users/hyjoy/WorkSpace/Study/ffmpeg/ffmpeg-3.3.9/build/armv5'

make clean
make -j8
make install

