#!/bin/bash
set -e
cd /tmp
git clone https://github.com/fsaintjacques/semver-tool
cd semver-tool
sudo make install
cd ..
rm -rf semver-tool

git clone --depth=1 https://github.com/ajdiaz/bashc
cd bashc
make -j$(nproc)
chmod +x releases/bashc
sudo install -dm755 releases/bashc /usr/bin/bashc
cd ..
rm -rf bashc

git clone --depth=1 https://github.com/Henryws/bpm
cd bpm
sudo install -dm755 bpm /bin/bpm
cd ..
rm -rf bpm
