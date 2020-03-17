# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a50 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a50
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a50
PRODUCT_MODEL := SM-A505F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a50
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a50dd-user 10 QP1A.190711.020 A505FDDU4BTC4 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a50dd/a50:10/QP1A.190711.020/A505FDDU4BTC4:user/release-keys
