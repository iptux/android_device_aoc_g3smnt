# Copyright (C) 2015-2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common language setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit tf700t vendor setup
$(call inherit-product-if-exists, vendor/aoc/g3smnt/g3smnt-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/aoc/g3smnt/overlay

# Build characteristics setting
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := ldpi normal hdpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# This device has enough space for precise dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Extra packages to build for this device
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    libaudioutils \
    libinvensense_mpl \

# Infinity specific properties
PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    ro.opengles.version=131072 \
    persist.sys.usb.config=mtp,adb

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Device Naming
PRODUCT_NAME := full_g3smnt
PRODUCT_DEVICE := g3smnt
PRODUCT_BRAND := AOC
PRODUCT_MODEL := G3SMNT
