#!/usr/bin/env bash
ls -lh .
mkdir ${SRC_DIR}/build
cd ${SRC_DIR}/build
cmake ${CMAKE_ARGS} -DUSE_STATIC_RUNTIME:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON ${SRC_DIR}
make install
