# inherit from the proprietary version
-include vendor/lge/e730/BoardConfigVendor.mk
-include device/lge/e730/BoardConfigCommon.mk

# Try to build the kernel
TARGET_KERNEL_CONFIG := e730_defconfig
TARGET_KERNEL_SOURCE := device/kernel/victor
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/e730/prebuilt/kernel/zImage

#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
#################WE are copying the Prebuilt Kernel here(AOSP)######################

#ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#else
#	LOCAL_KERNEL := $(TARGET_KERNEL_SOURCE)
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

####################END AOSP###########################

TARGET_QCOM_HDMI_OUT := false


