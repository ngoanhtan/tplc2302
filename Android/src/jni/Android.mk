LOCAL_PATH := $(call my-dir)
NDK_HOME := d:\DevTools\android-ndk-r9

MODULES_PATH := ..
OBJ_STRUCTURE := obj/local/$(TARGET_ARCH_ABI)

# lib1
include $(CLEAR_VARS)
LOCAL_MODULE := lib1
LOCAL_SRC_FILES := $(MODULES_PATH)/lib1/$(OBJ_STRUCTURE)/lib1.a
include $(PREBUILT_STATIC_LIBRARY)

# lib2
include $(CLEAR_VARS)
LOCAL_MODULE := lib2
LOCAL_SRC_FILES := $(MODULES_PATH)/lib2/$(OBJ_STRUCTURE)/lib2.a
include $(PREBUILT_STATIC_LIBRARY)

# jsoncpp
include $(CLEAR_VARS)
LOCAL_MODULE := jsoncpp
LOCAL_SRC_FILES := $(MODULES_PATH)/jsoncpp/$(OBJ_STRUCTURE)/libjsoncpp.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := offlineitems

LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := false

LOCAL_STATIC_LIBRARIES := lib1 lib2 jsoncpp
include $(BUILD_SHARED_LIBRARY)

