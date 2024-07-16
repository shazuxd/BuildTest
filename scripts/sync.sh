#!/bin/bash
sync() {
repo init --depth=1 --no-repo-verify -u https://github.com/DerpFest-AOSP/manifest.git -b 13
git clone https://github.com/shazuxd/local_manifests .repo/local_manifests
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle -j$(nproc --all)
}
echo "Syncing Rom & Device Sources"
sync
