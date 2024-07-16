#!/bin/bash
source build/envsetup.sh
lunch aosp_pissarro-ap2a-userdebug
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 50G
ccache -o compression=true
ccache -z
mka bacon
