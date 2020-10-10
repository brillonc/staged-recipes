#!/bin/sh

mkdir build && cd build


cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_SKIP_INSTALL_RPATH=ON \
      $SRC_DIR

make -j${CPU_COUNT}
make install
