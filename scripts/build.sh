#!/bin/bash
source build/envsetup.sh
lunch derp_pissarro-user
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 50G
ccache -o compression=true
ccache -z
mka init
mka sepolicy
mka detp
