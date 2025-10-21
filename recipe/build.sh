#!/usr/bin/env bash
ls -lh .
# untar dcm2niix-*.tar.gz
tar -xvf ../dcm2niix-*.tar.gz --strip-components=1
ls -lh .
mkdir build && cd build
cmake ${CMAKE_ARGS} -DUSE_STATIC_RUNTIME:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON ..
make install
