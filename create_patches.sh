#!/bin/sh
set -e

patch_dir="$1"

if [ ! -d .git ]; then
  echo Repository not found
  exit 1
fi
mkdir -p ${patch_dir}
git format-patch -o${patch_dir} v3.0.12...meteogrid
