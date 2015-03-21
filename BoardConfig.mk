USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/karbonn/super/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6571
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := super

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := $(call image-size-from-data-size,6291456)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 241172480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 245628928
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_UBIFS := true

TARGET_PREBUILT_KERNEL := device/karbonn/super/prebuilt/kernel

## Recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
#TARGET_RECOVERY_FSTAB := device/karbonn/super/recovery/recovery.fstab
#RECOVERY_VARIANT := carliv
#BOARD_HAS_MTK := true
#DEVICE_RESOLUTION := 320x480
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"
#BOARD_HAS_NO_SELECT_BUTTON := true

## TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_INITRC := device/karbonn/super/recovery/init.mt6571.rc
TARGET_RECOVERY_FSTAB := device/karbonn/super/recovery/recovery.fstab
RECOVERY_VARIANT := twrp
TARGET_PREBUILT_RECOVERY_KERNEL := device/karbonn/super/prebuilt/kernel
#RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/storage/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true

## UMS
BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_CUSTOM_BOOTIMG_MK := device/karbonn/super/mkmtkbootimg.mk

DEVICE_RESOLUTION := 320x480
TARGET_SCREEN_WIDTH := 320
TARGET_SCREEN_HEIGHT := 480
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"

