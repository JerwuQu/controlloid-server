#!/usr/bin/env bash

BUILD_TYPE="Release"
ROOT_DIR=$(git rev-parse --show-toplevel)
DIST_DIR="${ROOT_DIR}/dist/linux"
BUILD_DIR="${ROOT_DIR}/src/linux/cmake-build-release"

mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR}
cmake .. -DCMAKE_BUILD_TYPE=${BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${DIST_DIR}
make install
