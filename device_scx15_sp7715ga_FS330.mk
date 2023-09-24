$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bq/scx15_sp7715ga_FS330/scx15_sp7715ga_FS330-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bq/scx15_sp7715ga_FS330/overlay

LOCAL_PATH := device/bq/scx15_sp7715ga_FS330/prebuilt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_scx15_sp7715ga_FS330
PRODUCT_DEVICE := scx15_sp7715ga_FS330

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=0 \
ro.debuggable=1 \
persist.sys.usb.config=mass_storage

PRODUCT_COPY_FILES_OVERRIDES += \
	root/fstab.goldfish \
	root/init.goldfish.rc \
	root/ueventd.goldfish.rc \
	recovery/root/fstab.goldfish