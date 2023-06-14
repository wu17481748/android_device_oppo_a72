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
$(call inherit-product, device/oppo/oppo_a72/device.mk)

PRODUCT_DEVICE := oppo_a72
PRODUCT_NAME := omni_oppo_a72
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6853-user 10 QP1A.190711.020 2tc16spmt6853V1 release-keys"

BUILD_FINGERPRINT := alps/vnd_oppo6853/oppo6853:11/RP1A.200720.011/1645294022283:user/release-keys
