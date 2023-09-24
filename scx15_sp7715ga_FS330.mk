$(call inherit-product, build/target/product/full.mk)

LOCAL_PATH := device/bq/scx15_sp7715ga_FS330

PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/ueventd.scx15.rc:recovery/root/ueventd.scx15.rc

PRODUCT_NAME := scx15_sp7715ga_FS330