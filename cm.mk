## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := scx15_sp7715ga_FS330

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/scx15_sp7715ga_FS330/device_scx15_sp7715ga_FS330.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := scx15_sp7715ga_FS330
PRODUCT_NAME := cm_scx15_sp7715ga_FS330
PRODUCT_BRAND := BQ-2800G
PRODUCT_MODEL := BQ-2800G
PRODUCT_MANUFACTURER := BQ-2800G