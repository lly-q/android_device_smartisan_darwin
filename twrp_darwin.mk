#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from darwin device
$(call inherit-product, device/deltainno/darwin/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := darwin
PRODUCT_NAME := omni_darwin
PRODUCT_BRAND := SMARTISAN
PRODUCT_MODEL := DT2002C
PRODUCT_MANUFACTURER := deltainno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="darwin" \
    PRIVATE_BUILD_DESC="darwin-user 10.0.0 RKQ1.201217.002 1 dev-keys"

BUILD_FINGERPRINT := SMARTISAN/aries/aries:11/RKQ1.201217.002/1636101883:user/dev-keys
