#
# Copyright (C) 2014 The Android Open-Source Project
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

TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH_VARIANT := armv7-a-neon

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/moto/clark/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/moto/clark
TARGET_KERNEL_CONFIG := msm8994-perf_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlyprintk=msm_hsl_uart,0xf991e000 utags.blkdev=/dev/block/bootdevice/by-name/utags utags.backup=/dev/block/bootdevice/by-name/utagsBackup

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset BOARD_RAMDISK_OFFSET --tags_offset BOARD_KERNEL_TAGS_OFFSET

# QCOM sepolicy
include device/qcom/sepolicy/sepolicy.mk

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_EGL_CFG := device/moto/clark/egl.cfg

BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true

BOARD_USES_QCOM_HARDWARE := true

BOARD_USES_QC_TIME_SERVICES := true

TARGET_POWERHAL_VARIANT := qcom

TARGET_PROVIDES_LIBLIGHT := true

# Hardware
BOARD_HARDWARE_CLASS := device/moto/clark/cmhw

# Wifi related defines
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"

#BOARD_USES_SECURE_SERVICES := true

BOARD_SEPOLICY_DIRS += \
    device/moto/clark/sepolicy

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/moto/clark/bluetooth

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8992
TARGET_BOOTLOADER_BOARD_NAME := clark
TARGET_NO_RPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_ION := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 42024960
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10198319104
BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/moto/clark/fstab.qcom

HAVE_ADRENO_SOURCE:= false

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP definitions
DEVICE_RESOLUTION := 1440x2560
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/moto/clark/recovery/graphics.c
TW_INCLUDE_L_CRYPTO := true
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
TW_INCLUDE_CRYPTO := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

