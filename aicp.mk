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

# Display
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/permissions/permissions_com.android.pixeldisplayservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.pixeldisplayservice.xml

# Quick Tap
PRODUCT_PACKAGES += \
    ColumbusService
