# SPDX-License-Identifier: Apache-2.0

# -----------------------------------------------------------------------------
# Device path
# -----------------------------------------------------------------------------
DEVICE_PATH := device/lenovo/X505X

# -----------------------------------------------------------------------------
# Architecture
# -----------------------------------------------------------------------------
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# -----------------------------------------------------------------------------
# Bootloader
# -----------------------------------------------------------------------------
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true

# -----------------------------------------------------------------------------
# Platform
# -----------------------------------------------------------------------------
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno504
TARGET_BOARD_SUFFIX := _64
TARGET_SUPPORTS_64_BIT_APPS := true

# -----------------------------------------------------------------------------
# Kernel
# -----------------------------------------------------------------------------
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := false

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x0000100
BOARD_RAMDISK_OFFSET := 0x01000000

# Kernel cmdline
BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
    androidboot.hardware=qcom \
    androidboot.bootdevice=7824900.sdhci \
    androidboot.selinux=permissive \
    buildvariant=user \
    msm_rtb.filter=0x237 \
    ehci-hcd.park=3 \
    lpm_levels.sleep_disabled=1 \
    earlycon=msm_serial_dm,0x78B0000 \
    firmware_class.path=/vendor/firmware_mnt/image \
    androidboot.usbconfigfs=true \
    loop.max_part=7 \
    print.devkmsg=on \
    androidboot.goodixtp=gtp

# -----------------------------------------------------------------------------
# Partitions
# -----------------------------------------------------------------------------
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x100000000

BOARD_SUPPORTS_DYNAMIC_PARTITIONS := false

# -----------------------------------------------------------------------------
# File system / Treble
# -----------------------------------------------------------------------------
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_ROOT_EXTRA_SYMLINKS := /vendor/firmware_mnt:/firmware

# -----------------------------------------------------------------------------
# Encryption / Decryption
# -----------------------------------------------------------------------------
TW_INCLUDE_CRYPTO := true
TW_USE_FSCRYPT_POLICY := 1
BOARD_USES_QCOM_FBE_DECRYPTION := true

TW_INCLUDE_RESETPROP := true
TW_EXCLUDE_APEX := true

# Fake patch levels (required for decryption on old devices)
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# -----------------------------------------------------------------------------
# Display / UI
# -----------------------------------------------------------------------------
TW_THEME := landscape_hdpi
TW_ROTATION := 90

RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true

TW_FRAMERATE := 60
TW_EXTRA_LANGUAGES := true

TW_INPUT_BLACKLIST := "hbtp_vm"
BOARD_HAS_NO_SELECT_BUTTON := true

# Brightness
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 200

# -----------------------------------------------------------------------------
# TWRP Features
# -----------------------------------------------------------------------------
BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

TW_USE_TOOLBOX := true
TW_USE_LEGACY_BATTERY_SERVICES := true
# TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/bms

TW_HAS_EDL_MODE := true
TW_INCLUDE_NTFS_3G := true

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true

# -----------------------------------------------------------------------------
# System properties override
# -----------------------------------------------------------------------------
TW_OVERRIDE_SYSTEM_PROPS := \
    ro.build.fingerprint=ro.system.build.fingerprint; \
    ro.build.version.incremental; \
    ro.product.name=X505X

# -----------------------------------------------------------------------------
# OTA assert
# -----------------------------------------------------------------------------
TARGET_OTA_ASSERT_DEVICE := X505X,TB-X505X,TB-X505F,TB-X505L
