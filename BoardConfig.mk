DEVICE_PATH := device/bq/scx15_sp7715ga_FS330

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := scx15_sp7715ga_FS330

# Platform
TARGET_BOARD_PLATFORM := scx15

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/scx15_sp7715ga_FS330/prebuilt/zImage

# File systems
TARGET_USERIMAGES_USE_UBIFS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_FLASH_BLOCK_SIZE := 4096

# TWRP
DEVICE_RESOLUTION := 240x240
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_EXCLUDE_SUPERSU := true
TW_NO_USB_STORAGE := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_BRIGHTNESS_PATH := "/sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone0/temp"
RECOVERY_SDCARD_ON_DATA := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_ALWAYS_RMRF := true

# UBIFS utils
BOARD_BUILD_UBIFS_TOOLS := true