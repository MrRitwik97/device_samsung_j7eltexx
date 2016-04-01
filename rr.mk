# Inherit device configuration
$(call inherit-product, device/samsung/j7eltexx/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_j7eltexx
PRODUCT_DEVICE := j7eltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J700F
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=j7eltexx
