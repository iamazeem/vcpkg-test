#!/bin/bash

set -e

echo "Cloning vcpkg..."
git clone https://github.com/microsoft/vcpkg && cd vcpkg
git checkout 5568f11

echo "Bootstrapping vcpkg..."
./bootstrap-vcpkg.sh

./vcpkg --version
./vcpkg integrate install

echo "vcpkg installed and configured successfully!"
echo "--- [DONE] ---"

exit 0
