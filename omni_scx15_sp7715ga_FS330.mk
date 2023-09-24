# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/bq/scx15_sp7715ga_FS330/scx15_sp7715ga_FS330.mk)

# Device Identifier. Needs to come after every other inclusion
PRODUCT_DEVICE := scx15_sp7715ga_FS330
PRODUCT_NAME := omni_scx15_sp7715ga_FS330
PRODUCT_BRAND := BQ-2800G
PRODUCT_MODEL := BQ-2800G
PRODUCT_MANUFACTURER := BQ-2800G