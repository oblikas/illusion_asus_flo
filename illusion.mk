# Fix?
$(call inherit-product, vendor/illusion/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := flo

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit led flash settings
$(call inherit-product, vendor/illusion/config/common_ledflash.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := illusion_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.3/JSS15Q/779366:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JSS15Q 779366 release-keys"

#hybrid
PRODUCT_COPY_FILES += \
vendor/illusion/prebuilt/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf
