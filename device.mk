#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/ingres/ingres-vendor.mk)

# Overlay
PRODUCT_PACKAGES += \
    ApertureResIngres \
    FrameworksResIngres \
    LineageResIngres \
    NfcResIngres \
    SettingsProviderResIngres \
    SettingsResIngres \
    SystemUIResIngres \
    WifiResIngres

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays Support Trigger
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# XiaomiParts
PRODUCT_PACKAGES += \
    XiaomiParts

