#!/bin/bash

set -e

VCPKG_EXEC="$PWD/vcpkg/vcpkg"
if [[ ! -f $VCPKG_EXEC ]]; then
  echo "Could not find $VCPKG_EXEC"
  exit 1
fi

echo "Installing dependencies..."
./vcpkg/vcpkg install fmt

echo "--- [DONE] ---"
exit 0
