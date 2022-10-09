#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Xdroid stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollon/device.mk)

PRODUCT_NAME := xdroid_apollon
PRODUCT_DEVICE := apollon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T
TARGET_GAPPS_ARCH := arm64
XDROID_BOOT_DARK := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 11 RKQ1.200826.002 V12.5.5.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Redmi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.5.0.RJDMIXM:user/release-keys
