#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from flame device
$(call inherit-product, device/xiaomi/flame/device.mk)

PRODUCT_DEVICE := flame
PRODUCT_NAME := omni_flame
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := flame
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="flame-user 12 SKQ1.231214.001 V816.0.9.0.UGUCNXM release-keys"

BUILD_FINGERPRINT := Redmi/flame/flame:12/SKQ1.231214.001/V816.0.9.0.UGUCNXM:user/release-keys
