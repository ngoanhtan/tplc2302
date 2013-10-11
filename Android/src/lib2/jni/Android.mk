LOCAL_PATH := $(call my-dir)
NDK_HOME := d:\DevTools\android-ndk-r9

include $(CLEAR_VARS)

LOCAL_MODULE := lib2

LOCAL_SRC_FILES := hello-jni.cpp

include $(BUILD_STATIC_LIBRARY)