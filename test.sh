
git clone https://github.com/jheulot/HEVCconformanceTest.git
./configure --disable-sdl2 --disable-sdl --enable-static --enable-ohplay-static && make -j 4
cd HEVCconformanceTest
wget https://www.dropbox.com/sh/t737d4cuqakpphi/AADLyGfMWlP5IdtTr_TqclmTa?dl=1 -O files.zip
unzip files.zip -d avconv || true
pwd && ls -al
export PATH=$PATH:..
ruby runPattern.rb -dir avconv -exec ohplay -yuv -noStop