#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/i9500

BOARD_VENDOR := samsung

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := ja3g,ja3gxx,i9500,GT-I9500

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal5410
TARGET_NO_BOOTLOADER := true

# Build
TARGET_USES_BLOCK_BASED_OTA := false

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos5410

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_i9500_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5410

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
COMMON_GLOBAL_CFLAGS += -DSAMPLE_RATE_48K

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
BOARD_NEEDS_MEMORYHEAPION := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/i9500/cmhw

# Exynos5410 Hardware
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_STOREMETADATA := true
BOARD_USES_GSC_VIDEO := true
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED

# FileSystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 2172649472
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2898264064
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9604939776

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Graphics
BOARD_EGL_SYSTEMUI_PBSIZE_HACK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DSURFACE_IS_BGR32
HWUI_COMPILE_FOR_PERF := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true

# NFC
BOARD_NFC_HAL_SUFFIX := universal5410

# Radio
BOARD_MODEM_TYPE := xmm7260
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../device/samsung/i9500/ril

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_DEVICE_MODULES += init.recovery.usb.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5410
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/etc/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/i9500/sepolicy

BOARD_SEPOLICY_UNION := \
    bluetooth.te \
    device.te \
    drmserver.te \
    file_contexts \
    file.te \
    gpsd.te \
    mediaserver.te \
    property_contexts \
    property.te \
    pvrsrvctl.te \
    rild.te \
    shell.te \
    system_server.te \
    ueventd.te \
    wpa.te

# TWRP Specific
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_L_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_hdpi

# WiFi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
