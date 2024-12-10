#!/bin/bash
rm -rf vendor/lineage
rm -rf packages/apps/android_packages_apps_Updater
rm -rf vendor/xiaomi/sunny
git clone https://github.com/RisingTechOSS/android_vendor_lineage.git --depth 1 -b fifteen vendor/lineage
cd vendor/lineage
curl -s https://github.com/RisingTechOSS/android_vendor_lineage/commit/114e7aa0798e4f7bc0f8866c9979f9d5a2c72a66.patch | git am
curl -s https://github.com/RisingTechOSS/android_vendor_lineage/commit/f8a153ad0138477c9cc2c57af95845d7d26ff1c3.patch | git am
cd ../..
git clone https://github.com/RisingTechOSS/android_packages_apps_Updater.git --depth 1 -b fifteen packages/apps/android_packages_apps_Updater
cd packages/apps/android_packages_apps_Updater
curl -s https://github.com/RisingTechOSS/android_packages_apps_Updater/commit/9812469a2340abac46cbd839d5057d58125d9664.patch | git am
cd ../../..
git clone https://github.com/PixelOS-Devices/vendor_xiaomi_sunny.git --depth 1 -b fourteen vendor/xiaomi/sunny
cd vendor/xiaomi/sunny
curl -s https://github.com/PixelOS-Devices/vendor_xiaomi_sunny/commit/592925300f9cd3946f39035ea438745255a5aa74.patch | git am
cd ../../..
