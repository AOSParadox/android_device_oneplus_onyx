# inherit CodeAurora MSM8974 Board Config
-include device/qcom/msm8974/BoardConfig.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := onyx,A0001

# Include
TARGET_SPECIFIC_HEADER_PATH := device/oneplus/onyx/include

# Bluetooth
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/onyx

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbToolOnyx
TARGET_RECOVERY_FSTAB = device/oneplus/onyx/ramdisk/fstab.qcom
KERNEL_DEFCONFIG := baconx_defconfig
KERNEL_DIR := kernel/oneplus/msm8974
TARGET_NO_BOOTLOADER := true
TARGET_USE_CM_RAMDISK := true

# Audio
USE_CUSTOM_AUDIO_POLICY := 1

# Display
USE_OPENGL_RENDERER := true

# Gestures
TARGET_POWER_GESTURE_FILE := device/oneplus/onyx/power/gestures.c
TARGET_DRAW_ARROW_LEFT_NODE := "/proc/touchpanel/music_enable"
TARGET_DRAW_O_NODE := "/proc/touchpanel/camera_enable"
TARGET_DRAW_V_NODE := "/proc/touchpanel/flashlight_enable"
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS += ../../../device/oneplus/onyx/ril

# Flashlight
COMMON_GLOBAL_CPPFLAGS += -DLEGACY_FLASHLIGHT_FIX

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13271448576
TARGET_USERIMAGES_USE_F2FS := true

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Enable dex pre-opt to speed up initial boot
ifeq ($(HOST_OS),linux)
      WITH_DEXPREOPT := true
endif

# Sepolicy
BOARD_SEPOLICY_DIRS += \
     device/oneplus/onyx/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
