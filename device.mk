
#
# Copyright (C) 2016 The AOSParadox Project
# Copyright (C) 2016 Paranoid Android
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

# CAF Branch
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.par.branch=LA.BF.1.1.3-01310-8x74.0

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oneplus/onyx/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oneplus/onyx/prebuilt/system,system)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay
PRODUCT_PACKAGE_OVERLAYS += device/oneplus/onyx/overlay

PRODUCT_AAPT_CONFIG += xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# CAF Branch
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.par.branch=LA.BF.1.1.3-01610-8x74.0

# CodeAurora MSM9874 Device Tree
$(call inherit-product, device/qcom/msm8974/msm8974.mk)

$(call inherit-product, device/oneplus/onyx/common.mk)
$(call inherit-product, vendor/oneplus/onyx/onyx-vendor.mk)

# WiFi
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
