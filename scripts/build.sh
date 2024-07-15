#!/bin/bash
source build/envsetup.sh
lunch aosp_pissarro-user
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export SKIP_ABI_CHECKS=true
ccache -M 50G
ccache -o compression=true
ccache -z
make bacon
