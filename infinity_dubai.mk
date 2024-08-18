#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP = true

# Infinity-X flags
INFINITY_MAINTAINER := "Francirijillo"
TARGET_SUPPORTS_BLUR := true
TARGET_BUILD_VIMUSIC := true
USE_MOTO_CALCULATOR := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true

PRODUCT_NAME := infinity_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    PRIVATE_BUILD_DESC="dubai_g-user 13 T1RDS33.116-33-15-8 5a543-33cdf1 release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:13/T1RDS33.116-33-15-8/5a543-33cdf1:user/release-keys
