# Release name
PRODUCT_RELEASE_NAME := ha3g

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ha3g
PRODUCT_NAME := omni_ha3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N900
PRODUCT_MANUFACTURER := samsung
