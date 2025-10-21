#!/usr/bin/env bash
ls -lh .
tar -xzf dcm2niix-*.tar.gz
ls -lh .
cd dcm2niix-*/
mkdir build && cd build
cmake ${CMAKE_ARGS} -DUSE_STATIC_RUNTIME:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON ..
make install
