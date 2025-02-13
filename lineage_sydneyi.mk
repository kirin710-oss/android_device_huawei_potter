#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)


# Inherit from sydneyi device
$(call inherit-product, device/huawei/sydneyi/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sydneyi
PRODUCT_NAME := lineage_sydneyi
PRODUCT_BRAND := HWPOT-H
PRODUCT_MODEL := INE-AL00
PRODUCT_MANUFACTURER := HUAWEI

TARGET_BOOTLOADER_BOARD_NAME := kirin710

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=INE \
    PRIVATE_BUILD_DESC="INE-AL00-user 9 INE-LGRP1-CHN release-keys"

BUILD_FINGERPRINT := kirin710/kirin710/kirin710:9/PPR1.180610.011/root202111170229:user/release-keys
