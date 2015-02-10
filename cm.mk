## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := super

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/karbonn/super/device_super.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := super
PRODUCT_NAME := cm_super
PRODUCT_BRAND := karbonn
PRODUCT_MODEL := super
PRODUCT_MANUFACTURER := karbonn
