#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X689C device
$(call inherit-product, device/infinix/X689C/device.mk)

PRODUCT_DEVICE := X689C
PRODUCT_NAME := twrp_X689C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix hot 10T
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x689c_h696-user 11 RP1A.200720.011 91810 release-keys"

BUILD_FINGERPRINT := Infinix/X689C-OP/Infinix-X689C:11/RP1A.200720.011/210326V170:user/release-keys
