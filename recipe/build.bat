tar -xvf ..\dcm2niix-*.tar.gz --strip-components=1
mdkir %SRC_DIR%\build
cd %SRC_DIR%\build
cmake -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% %SRC_DIR%
cmake --build . --target INSTALL --config Release