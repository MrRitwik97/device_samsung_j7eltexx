LOCAL_PATH := device/samsung/j7eltexx

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := blobs

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_BOOTLOADER_BOARD_NAME := universal7580

# /proc/partitions * BLOCK_SIZE (512)
BOARD_BOOTIMAGE_PARTITION_SIZE := 29360128
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35651584
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13514047488
BOARD_FLASH_BLOCK_SIZE := 131072

# PowerHAL
TARGET_POWERHAL_VARIANT := universal7580

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x11000000 --tags_offset 0x10000100 --dt $(LOCAL_PATH)/dtb.img
TARGET_KERNEL_CONFIG := cm_j7eltexx_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j7eltexx
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Graphics
USE_OPENGL_RENDERER := true

#Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53

# frameworks/native/services/surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/j7eltexx/cmhw

# WIFI
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/etc/wifi/bcmdhd_apsta.bin"

# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# Wifi Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# Charger/Healthd
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_VENDOR := samsung
BOARD_PROVIDES_LIBRIL := true
TARGET_IGNORE_RO_BOOT_REVISION := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.samsungexynos7580

# SELinux
BOARD_SEPOLICY_DIRS := \
	device/samsung/j7eltexx/sepolicy

# RIL
BOARD_MODEM_TYPE := m7450

# Recovery
TARGET_OTA_ASSERT_DEVICE := j7elte,j7eltexx
