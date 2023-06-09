#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from oppo_a72 device
$(call inherit-product, device/oppo_a72/device.mk)

PRODUCT_DEVICE := oppo_a72
PRODUCT_NAME := omni_oppo_a72
PRODUCT_BRAND := alps
PRODUCT_MODEL := oppo_a72
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_oppo6853-user 11 RP1A.200720.011 1645294022283 release-keys"

BUILD_FINGERPRINT := alps/vnd_oppo6853/oppo6853:11/RP1A.200720.011/1645294022283:user/release-keys
