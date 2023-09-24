DEVICE_PATH := device/bq/scx15_sp7715ga_FS330

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bq/scx15_sp7715ga_FS330/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform
TARGET_BOARD_PLATFORM := scx15

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := scx15_sp7715ga_FS330

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# File systems
TARGET_USERIMAGES_USE_UBIFS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_FLASH_BLOCK_SIZE := 4096

# Carliv
RECOVERY_VARIANT := carliv
DEVICE_RESOLUTION := 240x240
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness\"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/init.scx15.rc
BOARD_HAS_NO_SELECT_BUTTON := true