#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := tokay
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/tokay
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9
PRODUCT_NAME := aicp_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tokay-user 16 BP4A.260205.002 14624737 release-keys" \
    BuildFingerprint=google/tokay/tokay:16/BP4A.260205.002/14624737:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

# AICP Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Siluxsept (Ron H.)"

# PixelParts app
PRODUCT_PACKAGES += \
    PixelParts

# PixelParts init rc
PRODUCT_PACKAGES += \
    init.pixelparts.rc

# PixelParts sepolicy
BOARD_SEPOLICY_DIRS += packages/apps/PixelParts/sepolicy

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
