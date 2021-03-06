LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
	src/LCML_DspCodec.c

LOCAL_C_INCLUDES += \
	$(TI_OMX_INCLUDES) \
	$(TI_BRIDGE_INCLUDES) \
	$(TI_OMX_SYSTEM)/lcml/inc \

LOCAL_SHARED_LIBRARIES := \
	libdl \
	libcutils \
	libbridge \
	libOMX_Core

LOCAL_CFLAGS := $(TI_OMX_CFLAGS)

LOCAL_MODULE:= libLCML
LOCAL_MODULE_TAGS := optional

include $(call all-subdir-makefiles)
