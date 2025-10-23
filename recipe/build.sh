#!/usr/bin/env bash
ls -lh .
tar -xzf dcm2niix-*.tar.gz
ls -lh .
cd dcm2niix-*/
mkdir build && cd build
cmake ${CMAKE_ARGS} -DUSE_STATIC_RUNTIME:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=GitHub -DBUILD_SHARED_LIBS=OFF ..
make install
# copy license.txt from $SRC_DIR/dcm2niix-*/license.txt to $SRC_DIR/license.txt
cd ..
ls -lh .
cp license.txt $SRC_DIR/license.txt