#
# Copyright (C) 2016 The AOSParadox Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/oneplus/onyx/onyx-vendor.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oneplus/onyx/ramdisk,root)

# Prebuilts
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/prebuilt/system,system)

# Set ro.hardware for boot
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.hardware=onyx

# Set right FRP mount point
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/platform/msm_sdcc.1/by-name/config

# CodeAurora MSM9874 Device Tree
$(call inherit-product, device/qcom/msm8974/msm8974.mk)

# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay
PRODUCT_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# dtbTool
PRODUCT_PACKAGES += \
    dtbToolonyx

# Find7Parts
PRODUCT_PACKAGES += \
    Find7Parts

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974
	
# libOP
PRODUCT_PACKAGES += \
    libOP

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974 \
    keystore.qcom

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Power
PRODUCT_PACKAGES += \
    power.qcom

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wi-Fi
PRODUCT_PACKAGES += \
    wcnss_service \
    libwcnss_qmi

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/oneplus/onyx/onyx-vendor.mk)
