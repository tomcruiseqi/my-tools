#!/usr/bin/zsh

# install packages first.
sudo apt-get install -y \
  gcc-12 gcc-12-doc libgcc-12-dev \
  gcc-12-arm-linux-gnueabi gcc-12-arm-linux-gnueabihf \
  gcc-12-arm-linux-gnueabi-base gcc-12-arm-linux-gnueabihf-base \
  gcc-12-aarch64-linux-gnu gcc-12-aarch64-linux-gnu-base \
  gcc-12-i686-linux-gnu gcc-12-i686-linux-gnu-base \
  g++-12 \
  g++-12-aarch64-linux-gnu \
  g++-12-arm-linux-gnueabi \
  g++-12-arm-linux-gnueabihf \
  g++-12-i686-linux-gnu \
  cpp-12 \
  cpp-12-aarch64-linux-gnu \
  cpp-12-arm-linux-gnueabi \
  cpp-12-arm-linux-gnueabihf \
  cpp-12-i686-linux-gnu \
  gcc-11 gcc-11-doc libgcc-11-dev \
  gcc-11-arm-linux-gnueabi gcc-11-arm-linux-gnueabihf \
  gcc-11-arm-linux-gnueabi-base gcc-11-arm-linux-gnueabihf-base \
  gcc-11-aarch64-linux-gnu gcc-11-aarch64-linux-gnu-base \
  gcc-11-i686-linux-gnu gcc-11-i686-linux-gnu-base \
  g++-11 \
  g++-11-aarch64-linux-gnu \
  g++-11-arm-linux-gnueabi \
  g++-11-arm-linux-gnueabihf \
  g++-11-i686-linux-gnu \
  cpp-11 \
  cpp-11-aarch64-linux-gnu \
  cpp-11-arm-linux-gnueabi \
  cpp-11-arm-linux-gnueabihf \
  cpp-11-i686-linux-gnu \
  gcc-10 gcc-10-doc libgcc-10-dev \
  gcc-10-arm-linux-gnueabi gcc-10-arm-linux-gnueabihf \
  gcc-10-arm-linux-gnueabi-base gcc-10-arm-linux-gnueabihf-base \
  gcc-10-aarch64-linux-gnu gcc-10-aarch64-linux-gnu-base \
  gcc-10-i686-linux-gnu gcc-10-i686-linux-gnu-base \
  g++-10 \
  g++-10-aarch64-linux-gnu \
  g++-10-arm-linux-gnueabi \
  g++-10-arm-linux-gnueabihf \
  g++-10-i686-linux-gnu \
  cpp-10 \
  cpp-10-aarch64-linux-gnu \
  cpp-10-arm-linux-gnueabi \
  cpp-10-arm-linux-gnueabihf \
  cpp-10-i686-linux-gnu \
  gcc-9 gcc-9-doc libgcc-9-dev \
  gcc-9-arm-linux-gnueabi gcc-9-arm-linux-gnueabihf \
  gcc-9-arm-linux-gnueabi-base gcc-9-arm-linux-gnueabihf-base \
  gcc-9-aarch64-linux-gnu gcc-9-aarch64-linux-gnu-base \
  gcc-9-i686-linux-gnu gcc-9-i686-linux-gnu-base \
  g++-9 \
  g++-9-aarch64-linux-gnu \
  g++-9-arm-linux-gnueabi \
  g++-9-arm-linux-gnueabihf \
  g++-9-i686-linux-gnu \
  cpp-9 \
  cpp-9-aarch64-linux-gnu \
  cpp-9-arm-linux-gnueabi \
  cpp-9-arm-linux-gnueabihf \
  cpp-9-i686-linux-gnu

# setup the alternatives.
# aarch64
sudo update-alternatives --remove-all aarch64-linux-gnu-gcc
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc aarch64-linux-gnu-gcc /usr/bin/aarch64-linux-gnu-gcc-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc aarch64-linux-gnu-gcc /usr/bin/aarch64-linux-gnu-gcc-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc aarch64-linux-gnu-gcc /usr/bin/aarch64-linux-gnu-gcc-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc aarch64-linux-gnu-gcc /usr/bin/aarch64-linux-gnu-gcc-9 4

# cpp
sudo update-alternatives --remove-all aarch64-linux-gnu-cpp
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-cpp aarch64-linux-gnu-cpp /usr/bin/aarch64-linux-gnu-cpp-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-cpp aarch64-linux-gnu-cpp /usr/bin/aarch64-linux-gnu-cpp-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-cpp aarch64-linux-gnu-cpp /usr/bin/aarch64-linux-gnu-cpp-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-cpp aarch64-linux-gnu-cpp /usr/bin/aarch64-linux-gnu-cpp-9 4

# g++
sudo update-alternatives --remove-all aarch64-linux-gnu-g++
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-g++ aarch64-linux-gnu-g++ /usr/bin/aarch64-linux-gnu-g++-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-g++ aarch64-linux-gnu-g++ /usr/bin/aarch64-linux-gnu-g++-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-g++ aarch64-linux-gnu-g++ /usr/bin/aarch64-linux-gnu-g++-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-g++ aarch64-linux-gnu-g++ /usr/bin/aarch64-linux-gnu-g++-9 4

# gcov
sudo update-alternatives --remove-all aarch64-linux-gnu-gcov
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov aarch64-linux-gnu-gcov /usr/bin/aarch64-linux-gnu-gcov-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov aarch64-linux-gnu-gcov /usr/bin/aarch64-linux-gnu-gcov-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov aarch64-linux-gnu-gcov /usr/bin/aarch64-linux-gnu-gcov-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov aarch64-linux-gnu-gcov /usr/bin/aarch64-linux-gnu-gcov-9 4

# gcov-dump
sudo update-alternatives --remove-all aarch64-linux-gnu-gcov-dump
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-dump aarch64-linux-gnu-gcov-dump /usr/bin/aarch64-linux-gnu-gcov-dump-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-dump aarch64-linux-gnu-gcov-dump /usr/bin/aarch64-linux-gnu-gcov-dump-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-dump aarch64-linux-gnu-gcov-dump /usr/bin/aarch64-linux-gnu-gcov-dump-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-dump aarch64-linux-gnu-gcov-dump /usr/bin/aarch64-linux-gnu-gcov-dump-9 4

# gcov-tool
sudo update-alternatives --remove-all aarch64-linux-gnu-gcov-tool
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-tool aarch64-linux-gnu-gcov-tool /usr/bin/aarch64-linux-gnu-gcov-tool-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-tool aarch64-linux-gnu-gcov-tool /usr/bin/aarch64-linux-gnu-gcov-tool-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-tool aarch64-linux-gnu-gcov-tool /usr/bin/aarch64-linux-gnu-gcov-tool-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-tool aarch64-linux-gnu-gcov-tool /usr/bin/aarch64-linux-gnu-gcov-tool-9 4

# gcov-dump
sudo update-alternatives --remove-all aarch64-linux-gnu-lto-dump
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-lto-dump aarch64-linux-gnu-lto-dump /usr/bin/aarch64-linux-gnu-lto-dump-12 1
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-lto-dump aarch64-linux-gnu-lto-dump /usr/bin/aarch64-linux-gnu-lto-dump-11 2
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-lto-dump aarch64-linux-gnu-lto-dump /usr/bin/aarch64-linux-gnu-lto-dump-10 3
sudo update-alternatives --install /usr/bin/aarch64-linux-gnu-lto-dump aarch64-linux-gnu-lto-dump /usr/bin/aarch64-linux-gnu-lto-dump-9 4

# arm gnueabi and gnueabihf
sudo update-alternatives --remove-all arm-linux-gnueabi-gcc
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcc
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcc arm-linux-gnueabi-gcc /usr/bin/arm-linux-gnueabi-gcc-9 4
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-9 4

# cpp
sudo update-alternatives --remove-all arm-linux-gnueabi-cpp
sudo update-alternatives --remove-all arm-linux-gnueabihf-cpp

sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-cpp arm-linux-gnueabi-cpp /usr/bin/arm-linux-gnueabi-cpp-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-cpp arm-linux-gnueabi-cpp /usr/bin/arm-linux-gnueabi-cpp-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-cpp arm-linux-gnueabi-cpp /usr/bin/arm-linux-gnueabi-cpp-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-cpp arm-linux-gnueabi-cpp /usr/bin/arm-linux-gnueabi-cpp-9 4
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-cpp arm-linux-gnueabihf-cpp /usr/bin/arm-linux-gnueabihf-cpp-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-cpp arm-linux-gnueabihf-cpp /usr/bin/arm-linux-gnueabihf-cpp-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-cpp arm-linux-gnueabihf-cpp /usr/bin/arm-linux-gnueabihf-cpp-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-cpp arm-linux-gnueabihf-cpp /usr/bin/arm-linux-gnueabihf-cpp-9 4

# g++
sudo update-alternatives --remove-all arm-linux-gnueabi-g++
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-g++ arm-linux-gnueabi-g++ /usr/bin/arm-linux-gnueabi-g++-9 4
sudo update-alternatives --remove-all arm-linux-gnueabihf-g++
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-g++ arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnueabihf-g++-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-g++ arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnueabihf-g++-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-g++ arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnueabihf-g++-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-g++ arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnueabihf-g++-9 4

# gcov
sudo update-alternatives --remove-all arm-linux-gnueabi-gcov
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov arm-linux-gnueabi-gcov /usr/bin/arm-linux-gnueabi-gcov-9 4
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcov
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov arm-linux-gnueabihf-gcov /usr/bin/arm-linux-gnueabihf-gcov-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov arm-linux-gnueabihf-gcov /usr/bin/arm-linux-gnueabihf-gcov-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov arm-linux-gnueabihf-gcov /usr/bin/arm-linux-gnueabihf-gcov-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov arm-linux-gnueabihf-gcov /usr/bin/arm-linux-gnueabihf-gcov-9 4

# gcov-dump
sudo update-alternatives --remove-all arm-linux-gnueabi-gcov-dump
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-dump arm-linux-gnueabi-gcov-dump /usr/bin/arm-linux-gnueabi-gcov-dump-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-dump arm-linux-gnueabi-gcov-dump /usr/bin/arm-linux-gnueabi-gcov-dump-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-dump arm-linux-gnueabi-gcov-dump /usr/bin/arm-linux-gnueabi-gcov-dump-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-dump arm-linux-gnueabi-gcov-dump /usr/bin/arm-linux-gnueabi-gcov-dump-9 4
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcov-dump
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-dump arm-linux-gnueabihf-gcov-dump /usr/bin/arm-linux-gnueabihf-gcov-dump-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-dump arm-linux-gnueabihf-gcov-dump /usr/bin/arm-linux-gnueabihf-gcov-dump-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-dump arm-linux-gnueabihf-gcov-dump /usr/bin/arm-linux-gnueabihf-gcov-dump-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-dump arm-linux-gnueabihf-gcov-dump /usr/bin/arm-linux-gnueabihf-gcov-dump-9 4

# gcov-tool
sudo update-alternatives --remove-all arm-linux-gnueabi-gcov-tool
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-tool arm-linux-gnueabi-gcov-tool /usr/bin/arm-linux-gnueabi-gcov-tool-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-tool arm-linux-gnueabi-gcov-tool /usr/bin/arm-linux-gnueabi-gcov-tool-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-tool arm-linux-gnueabi-gcov-tool /usr/bin/arm-linux-gnueabi-gcov-tool-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-gcov-tool arm-linux-gnueabi-gcov-tool /usr/bin/arm-linux-gnueabi-gcov-tool-9 4
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcov-tool
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-tool arm-linux-gnueabihf-gcov-tool /usr/bin/arm-linux-gnueabihf-gcov-tool-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-tool arm-linux-gnueabihf-gcov-tool /usr/bin/arm-linux-gnueabihf-gcov-tool-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-tool arm-linux-gnueabihf-gcov-tool /usr/bin/arm-linux-gnueabihf-gcov-tool-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcov-tool arm-linux-gnueabihf-gcov-tool /usr/bin/arm-linux-gnueabihf-gcov-tool-9 4

# lto-dump
sudo update-alternatives --remove-all arm-linux-gnueabi-lto-dump
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-lto-dump arm-linux-gnueabi-lto-dump /usr/bin/arm-linux-gnueabi-lto-dump-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-lto-dump arm-linux-gnueabi-lto-dump /usr/bin/arm-linux-gnueabi-lto-dump-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-lto-dump arm-linux-gnueabi-lto-dump /usr/bin/arm-linux-gnueabi-lto-dump-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabi-lto-dump arm-linux-gnueabi-lto-dump /usr/bin/arm-linux-gnueabi-lto-dump-9 4
sudo update-alternatives --remove-all arm-linux-gnueabihf-lto-dump
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-lto-dump arm-linux-gnueabihf-lto-dump /usr/bin/arm-linux-gnueabihf-lto-dump-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-lto-dump arm-linux-gnueabihf-lto-dump /usr/bin/arm-linux-gnueabihf-lto-dump-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-lto-dump arm-linux-gnueabihf-lto-dump /usr/bin/arm-linux-gnueabihf-lto-dump-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-lto-dump arm-linux-gnueabihf-lto-dump /usr/bin/arm-linux-gnueabihf-lto-dump-9 4

# gcc-ar (only gnueabihf)
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcc-ar
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ar arm-linux-gnueabihf-gcc-ar /usr/bin/arm-linux-gnueabihf-gcc-ar-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ar arm-linux-gnueabihf-gcc-ar /usr/bin/arm-linux-gnueabihf-gcc-ar-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ar arm-linux-gnueabihf-gcc-ar /usr/bin/arm-linux-gnueabihf-gcc-ar-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ar arm-linux-gnueabihf-gcc-ar /usr/bin/arm-linux-gnueabihf-gcc-ar-9 4

# gcc-nm (only gnueabihf)
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcc-nm
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-nm arm-linux-gnueabihf-gcc-nm /usr/bin/arm-linux-gnueabihf-gcc-nm-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-nm arm-linux-gnueabihf-gcc-nm /usr/bin/arm-linux-gnueabihf-gcc-nm-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-nm arm-linux-gnueabihf-gcc-nm /usr/bin/arm-linux-gnueabihf-gcc-nm-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-nm arm-linux-gnueabihf-gcc-nm /usr/bin/arm-linux-gnueabihf-gcc-nm-9 4

# gcc-ranlib (only gnueabihf)
sudo update-alternatives --remove-all arm-linux-gnueabihf-gcc-ranlib
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ranlib arm-linux-gnueabihf-gcc-ranlib /usr/bin/arm-linux-gnueabihf-gcc-ranlib-12 1
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ranlib arm-linux-gnueabihf-gcc-ranlib /usr/bin/arm-linux-gnueabihf-gcc-ranlib-11 2
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ranlib arm-linux-gnueabihf-gcc-ranlib /usr/bin/arm-linux-gnueabihf-gcc-ranlib-10 3
sudo update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc-ranlib arm-linux-gnueabihf-gcc-ranlib /usr/bin/arm-linux-gnueabihf-gcc-ranlib-9 4

# i686
sudo update-alternatives --remove-all i686-linux-gnu-gcc
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcc i686-linux-gnu-gcc /usr/bin/i686-linux-gnu-gcc-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcc i686-linux-gnu-gcc /usr/bin/i686-linux-gnu-gcc-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcc i686-linux-gnu-gcc /usr/bin/i686-linux-gnu-gcc-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcc i686-linux-gnu-gcc /usr/bin/i686-linux-gnu-gcc-9 4

# cpp
sudo update-alternatives --remove-all i686-linux-gnu-cpp
sudo update-alternatives --install /usr/bin/i686-linux-gnu-cpp i686-linux-gnu-cpp /usr/bin/i686-linux-gnu-cpp-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-cpp i686-linux-gnu-cpp /usr/bin/i686-linux-gnu-cpp-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-cpp i686-linux-gnu-cpp /usr/bin/i686-linux-gnu-cpp-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-cpp i686-linux-gnu-cpp /usr/bin/i686-linux-gnu-cpp-9 4

# g++
sudo update-alternatives --remove-all i686-linux-gnu-g++
sudo update-alternatives --install /usr/bin/i686-linux-gnu-g++ i686-linux-gnu-g++ /usr/bin/i686-linux-gnu-g++-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-g++ i686-linux-gnu-g++ /usr/bin/i686-linux-gnu-g++-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-g++ i686-linux-gnu-g++ /usr/bin/i686-linux-gnu-g++-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-g++ i686-linux-gnu-g++ /usr/bin/i686-linux-gnu-g++-9 4

# gcov
sudo update-alternatives --remove-all i686-linux-gnu-gcov
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov i686-linux-gnu-gcov /usr/bin/i686-linux-gnu-gcov-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov i686-linux-gnu-gcov /usr/bin/i686-linux-gnu-gcov-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov i686-linux-gnu-gcov /usr/bin/i686-linux-gnu-gcov-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov i686-linux-gnu-gcov /usr/bin/i686-linux-gnu-gcov-9 4

# gcov-dump
sudo update-alternatives --remove-all i686-linux-gnu-gcov-dump
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-dump i686-linux-gnu-gcov-dump /usr/bin/i686-linux-gnu-gcov-dump-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-dump i686-linux-gnu-gcov-dump /usr/bin/i686-linux-gnu-gcov-dump-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-dump i686-linux-gnu-gcov-dump /usr/bin/i686-linux-gnu-gcov-dump-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-dump i686-linux-gnu-gcov-dump /usr/bin/i686-linux-gnu-gcov-dump-9 4

# gcov-tool
sudo update-alternatives --remove-all i686-linux-gnu-gcov-tool
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-tool i686-linux-gnu-gcov-tool /usr/bin/i686-linux-gnu-gcov-tool-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-tool i686-linux-gnu-gcov-tool /usr/bin/i686-linux-gnu-gcov-tool-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-tool i686-linux-gnu-gcov-tool /usr/bin/i686-linux-gnu-gcov-tool-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-gcov-tool i686-linux-gnu-gcov-tool /usr/bin/i686-linux-gnu-gcov-tool-9 4

# gcov-dump
sudo update-alternatives --remove-all i686-linux-gnu-lto-dump
sudo update-alternatives --install /usr/bin/i686-linux-gnu-lto-dump i686-linux-gnu-lto-dump /usr/bin/i686-linux-gnu-lto-dump-12 1
sudo update-alternatives --install /usr/bin/i686-linux-gnu-lto-dump i686-linux-gnu-lto-dump /usr/bin/i686-linux-gnu-lto-dump-11 2
sudo update-alternatives --install /usr/bin/i686-linux-gnu-lto-dump i686-linux-gnu-lto-dump /usr/bin/i686-linux-gnu-lto-dump-10 3
sudo update-alternatives --install /usr/bin/i686-linux-gnu-lto-dump i686-linux-gnu-lto-dump /usr/bin/i686-linux-gnu-lto-dump-9 4

# x86_64 (this is the default archtecture)
# gcc
sudo update-alternatives --remove-all gcc
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 1
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 2
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 3
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 4

# g++
sudo update-alternatives --remove-all g++
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 1
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 2
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 3
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 4

# gcc-ar
sudo update-alternatives --remove-all gcc-ar
sudo update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-12 1
sudo update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-11 2
sudo update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-10 3
sudo update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-9 4

# gcc-nm
sudo update-alternatives --remove-all gcc-nm
sudo update-alternatives --install /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-12 1
sudo update-alternatives --install /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-11 2
sudo update-alternatives --install /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-10 3
sudo update-alternatives --install /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-9 4

# gcc-ranlib
sudo update-alternatives --remove-all gcc-nm
sudo update-alternatives --install /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-12 1
sudo update-alternatives --install /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-11 2
sudo update-alternatives --install /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-10 3
sudo update-alternatives --install /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-9 4

# gcov
sudo update-alternatives --remove-all gcov
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-12 1
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-11 2
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-10 3
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-9 4

# gcov-dump
sudo update-alternatives --remove-all gcov-dump
sudo update-alternatives --install /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-12 1
sudo update-alternatives --install /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-11 2
sudo update-alternatives --install /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-10 3
sudo update-alternatives --install /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-9 4

# gcov-tool
sudo update-alternatives --remove-all gcov-tool
sudo update-alternatives --install /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-12 1
sudo update-alternatives --install /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-11 2
sudo update-alternatives --install /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-10 3
sudo update-alternatives --install /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-9 4

