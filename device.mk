# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oneplus/onyx/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oneplus/onyx/prebuilt/system,system)

# CAF Branch
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.par.branch=LA.BF.1.1.3-01610-8x74.0

# CodeAurora MSM9874 Device Tree
$(call inherit-product, device/qcom/msm8974/msm8974.mk)

PRODUCT_AAPT_CONFIG += xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

$(call inherit-product, device/oneplus/onyx/common.mk)
$(call inherit-product, vendor/oneplus/onyx/onyx-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay
PRODUCT_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay

# WiFi configuration
PRODUCT_PACKAGES += \
    wcnss_service

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Bluetooth MAC
PRODUCT_PACKAGES += \
    mac-update \
    bdAddrLoader

# Shims
PRODUCT_PACKAGES += \
    libshim_ril

# Doze mode
PRODUCT_PACKAGES += \
    OneplusDoze
