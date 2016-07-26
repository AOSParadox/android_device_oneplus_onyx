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

# inherit CodeAurora MSM8974 Board Config
-include device/qcom/msm8974/BoardConfig.mk

# Include
TARGET_SPECIFIC_HEADER_PATH := device/oneplus/onyx/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := onyx,A0001

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_PCM_IOCTL_ENABLED := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/onyx
BOARD_HAVE_BLUETOOTH_QCOM := true

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Flashlight
COMMON_GLOBAL_CPPFLAGS += -DLEGACY_FLASHLIGHT_FIX

# Gestures
TARGET_POWER_GESTURE_FILE := device/oneplus/onyx/power/gestures.c
TARGET_DRAW_ARROW_LEFT_NODE := "/proc/touchpanel/music_enable"
TARGET_DRAW_O_NODE := "/proc/touchpanel/camera_enable"
TARGET_DRAW_V_NODE := "/proc/touchpanel/flashlight_enable"
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# GPS
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive # Selinux permissive for bringup
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbToolOnyx
KERNEL_DEFCONFIG := baconx_defconfig
KERNEL_DIR := kernel/oneplus/msm8974
TARGET_RECOVERY_FSTAB = device/oneplus/onyx/ramdisk/fstab.qcom
TARGET_USE_CM_RAMDISK := true
TARGET_NO_BOOTLOADER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13271448576
TARGET_USERIMAGES_USE_F2FS := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := false

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS += ../../../device/oneplus/onyx/ril

# Sepolicy
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/oneplus/onyx/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WPA_SUPPLICANT_VERSION := VER_0_8_X

-include vendor/oneplus/onyx/BoardConfigVendor.mk
