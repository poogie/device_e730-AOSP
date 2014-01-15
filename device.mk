#$(call inherit-product, device/lge/victor-common/victor.mk)
#We needn't victor-common anymore
# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/e730/device-vendor.mk)

#PRODUCT_COPY_FILES += \
#    device/lge/e730/prebuilt/wireless.ko:system/lib/modules/wireless.ko

## /////////////////////////
#USING DODGE KERNEL####uncomment wireless module for msm7x30 faily kernels
#///////////////////////////
PRODUCT_COPY_FILES += \
    device/lge/e730/prebuilt/kernel/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko\
    device/lge/e730/prebuilt/kernel/cls_flow.ko:system/lib/modules/cls_flow.ko\
    device/lge/e730/prebuilt/kernel/gspca_main.ko:system/lib/modules/gspca_main.ko\
    device/lge/e730/prebuilt/kernel/qce.ko:system/lib/modules/qce.ko\
    device/lge/e730/prebuilt/kernel/qcedev.ko:system/lib/modules/qcedev.ko\
    device/lge/e730/prebuilt/kernel/qcrypto.ko:system/lib/modules/qcrypto.ko\
    device/lge/e730/prebuilt/kernel/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko\
    device/lge/e730/prebuilt/kernel/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko


##########//////////////////END DODGE KERNEL MODULES///////////////

