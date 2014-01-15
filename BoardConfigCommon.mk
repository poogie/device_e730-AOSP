# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

TARGET_SPECIFIC_HEADER_PATH := device/lge/e730/include
#####We use aosp headers here####

TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DANCIENT_GL
BOARD_EGL_CFG := device/lge/e730/configs/egl.cfg
BOARD_USES_HWCOMPOSER := true

TARGET_BOOTLOADER_BOARD_NAME := victor
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true


TARGET_KERNEL_SOURCE := kernel/lge/msm7x30

# Wifi related defines
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/rtecdc-apsta.bin"
#WIFI_DRIVER_MODULE_NAME := "wireless"
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"

#USING DODGE KERNEL   ///////////uncomment wireless module for msm7x30 family kernels////////

WIFI_DRIVER_MODULE_ARG := "firmware_path=/etc/firmware/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_HAS_LGE_SOFTAP := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

TARGET_QCOM_HDMI_OUT := false

## WE HAVE LEGACY RIL
BOARD_USES_LEGACY_RIL := true

# qcom webkit
TARGET_FORCE_CPU_UPLOAD := true
# NiharG15 fix
#DYNAMIC_SHARED_LIBV8SO := true
ENABLE_WEBGL := true


BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := victor
BOARD_USES_QCOM_LIBRPC := true
#
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_AMSS_VERSION := 50000

# Camera
# BOARD_USES_LEGACY_CAMERA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
NO_UPDATE_PREVIEW := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyMSM1 androidboot.hardware=victor
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE)

BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGE_SIZE := 4096

# cat /proc/emmc
#dev: size erasesize name
#mmcblk0p17: 00040000 00000200 "misc"
#mmcblk0p21: 0087f400 00000200 "recovery"
#mmcblk0p22: 00400000 00000200 "boot"
#mmcblk0p25: 22dffe00 00000200 "system"
#mmcblk0p27: 12bffe00 00000200 "cache"
#mmcblk0p26: 496ffe00 00000200 "userdata"
#mmcblk0p28: 014bfe00 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e730/recovery/graphics.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#Keep Disabled for now till i figure out how to implement /include/linux spi_aic and tpa205

