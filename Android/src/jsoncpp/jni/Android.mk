LOCAL_PATH := $(call my-dir)
NDK_HOME := d:\DevTools\android-ndk-r9

include $(CLEAR_VARS)

LOCAL_MODULE := jsoncpp

LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := false

SRC_PATH := ../../../../lib/jsoncpp/src/lib_json
INC_PATH := $(LOCAL_PATH)/../../../../lib/jsoncpp/include

LOCAL_CFLAGS := \
    -D__ANDROID__ \
    -DANDROID \
    -D_ANDROID \
    -DANDROID_NDK \
    -DOS_ANDROID \
    -DUSE_SOUND_VOX \
    -D_GLIBCXX_USE_WCHAR_T \
    -DANDROID_PORT \
    -DUSE_GLWEBTOOLS_2 \
    -DGLOT_USE_GLWEBTOOLS_2 \
    -DGLSOCIALLIB_USE_GLWEBTOOLS_2 \
    -w \
    -mandroid \
    -ffunction-sections \
    -funwind-tables \
    -fno-stack-protector \
    -fpic \
    -Wno-psabi \
    -march=armv7-a \
    -mfpu=vfpv3-d16 \
    -mfloat-abi=softfp \
    -Wno-write-strings \
    -fsigned-char \
    -fno-exceptions \
    -fno-rtti \
    -fomit-frame-pointer \
    -fno-strict-aliasing \
    -fno-unit-at-a-time \
    -finline-limit=300 \
	-fexceptions \
    -O3 \
    -g
	
LOCAL_CPPFLAGS := $(LOCAL_CFLAGS) \

LOCAL_C_INCLUDES := \
    $(INC_PATH)/  \
	$(SRC_PATH)/json_batchallocator.h \
	$(SRC_PATH)/json_tool.h
	
LOCAL_SRC_FILES := \
    $(SRC_PATH)/json_value.cpp \
    $(SRC_PATH)/json_reader.cpp \
    $(SRC_PATH)/json_writer.cpp

include $(BUILD_STATIC_LIBRARY)

