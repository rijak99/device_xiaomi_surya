#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common PPUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Build Type
CUSTOM_BUILD_TYPE=OFFICIAL

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# PixelPlusUI Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
  ro.ppui.device_name=Poco-X3-NFC \
  ro.ppui.version=3.3 \
  ro.ppui.version_code=Tanzanite \
  ro.ppui.is_official=true \
  ro.ppui.maintainer_name=i-Jack
