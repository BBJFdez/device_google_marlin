# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit Lineage product configuration
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := full_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 10 QP1A.191005.007.A1 5908163 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:10/QP1A.191005.007.A1/5908163:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

$(call inherit-product-if-exists, vendor/google/sailfish/sailfish-vendor.mk)