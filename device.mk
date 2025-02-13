#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
#

# Device Path
DEVICE_PATH := device/huawei/sydneyi

# Inherit from kirin710-9-common
$(call inherit-product, device/huawei/kirin710-9-common/common.mk)

# Call the proprietary setup
$(call inherit-product, vendor/huawei/sydneyi/sydneyi-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlaysydneyi \
    WifiResOverlaysydneyi

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/sydneyi.rc:$(TARGET_COPY_OUT_ODM)/etc/init/sydneyi.rc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
