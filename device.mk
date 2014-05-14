$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/ha3g/ha3g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/ha3g/overlay

LOCAL_PATH := device/samsung/ha3g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
	$(LOCAL_PATH)/init.recovery.universal5420.rc:root/init.recovery.universal5420.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_ha3g
PRODUCT_BRAND := Samsung

include $(CLEAR_VARS)
LOCAL_MODULE := init2
LOCAL_OVERRIDE_PACKAGES := init
