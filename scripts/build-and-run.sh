#!/bin/bash

set -e

BUILD_DIR="${1:-build}"

echo "Removing existing build directory [$BUILD_DIR]..."
rm -rf "$BUILD_DIR"

VCPKG_CMAKE="$PWD/vcpkg/scripts/buildsystems/vcpkg.cmake"
echo "Validating vcpkg..."
if [[ ! -f $VCPKG_CMAKE ]]; then
  echo "Could not find $VCPKG_CMAKE"
  exit 1
fi

echo "CMAKE_TOOLCHAIN_FILE=$PWD/vcpkg/scripts/buildsystems/vcpkg.cmake"

echo "Building..."
cmake -B "$BUILD_DIR" -S . -DCMAKE_TOOLCHAIN_FILE="$PWD/vcpkg/scripts/buildsystems/vcpkg.cmake"
cmake --build "$BUILD_DIR"

echo "Running..."
"./$BUILD_DIR/test"

echo "--- [DONE] ---"
exit 0
