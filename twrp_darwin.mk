#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/deltainno/darwin

# Inherit from darwin device
$(call inherit-product, device/deltainno/darwin/device.mk)

# Release name
PRODUCT_RELEASE_NAME := darwin

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := darwin
PRODUCT_NAME := twrp_darwin
PRODUCT_BRAND := SMARTISAN
PRODUCT_MODEL := DT2002C
PRODUCT_MANUFACTURER := deltainno

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 88
TW_H_OFFSET := -88
