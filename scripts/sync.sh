#!/bin/bash
sync() {
repo init --depth=1 --no-repo-verify -u https://github.com/PixelOS-AOSP/manifest -b thirteen
git clone https://github.com/shazuxd/local_manifests .repo/local_manifests
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle -j$(nproc --all)
repo sync --fail-fast -j2
}
echo "Syncing Rom & Device Sources"
sync
