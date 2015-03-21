$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/karbonn/super/super-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/karbonn/super/overlay

LOCAL_PATH := device/karbonn/super/prebuilt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel #\
#    device/karbonn/super/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/init.goldfish.rc \
    recovery/root/fstab.goldfish

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=UBIFS \
ro.persist.partition.support=no

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_super
PRODUCT_DEVICE := super
