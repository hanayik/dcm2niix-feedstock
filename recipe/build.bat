@echo off
dir
tar -xzf dcm2niix-*.tar.gz
dir
for /d %%i in (dcm2niix-*) do cd %%i
mkdir build
cd build
cmake -Wno-dev -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ..
cmake --build . --target INSTALL --config Release
cd ..