#!/bin/sh
set -e
dir=$(cd "$(dirname "$0")" && pwd)
mkdir -p ~/.config
if [ -e ~/.config/zed ] && [ ! -L ~/.config/zed ]; then
  mv ~/.config/zed ~/.config/zed.bak
fi
ln -sfn "$dir/zed" ~/.config/zed
