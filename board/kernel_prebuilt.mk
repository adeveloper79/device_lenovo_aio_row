LOCAL_PATH := device/lenovo/aio_row

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/board/bootimg.mk
TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/aio_otfp/kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
