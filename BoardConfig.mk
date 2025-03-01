#Hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := zero

#Camera
USE_CAMERA_STUB:= false
BOARD_USE_CAF_LIBCAMERA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#WIFI
BOARD_WLAN_DEVICE := bcm4329
#WIFI_DRIVER_FW_STA_PATH := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_FIRMWARE_LOADER        := wifi-loader
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT

#Kernel, boot and recovery
TARGET_PREBUILT_KERNEL := device/geeksphone/zero/kernel
BOARD_KERNEL_CMDLINE := mem=212M androidboot.hardware=zero no_console_suspend=1 console=null quiet
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

#recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/geeksphone/zero/recovery_ui.c

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c3a0000
BOARD_FLASH_BLOCK_SIZE := 131072


#Graphics
BOARD_NO_RGBX_8888 := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

#Javascript engine
JS_ENGINE := v8

#Audio and Ril
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := zero
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_OTA_ASSERT_DEVICE := zero
TARGET_USES_OLD_LIBSENSORS_HAL:=true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

# Proximity sensor
TARGET_PROXIMITY_SENSOR_LIMIT := 3

# vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/geeksphone/zero/vibrator.c

# System
WITH_DEXPREOPT := true