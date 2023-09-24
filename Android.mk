LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),scx15_sp7715ga_FS330)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif