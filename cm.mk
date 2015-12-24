# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for tf700t.
$(call inherit-product, device/aoc/g3smnt/full_g3smnt.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_g3smnt
PRODUCT_BRAND := AOC
PRODUCT_DEVICE := G3SMNT
PRODUCT_MODEL := G3SMNT
PRODUCT_MANUFACTURER := TPV
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=G3SMNT

# Release name and versioning
PRODUCT_RELEASE_NAME := G3SMNT
