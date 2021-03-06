#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(my-dir)

#########################################
# non-jni part

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	exif.c \
	gpsinfo.c \
	iptc.c \
	jhead.c \
	jpgfile.c \
	jpgqguess.c \
	makernote.c \
	main.c

LOCAL_MODULE    := libexif_extended

LOCAL_CFLAGS += -w -O2

ifeq ($(strip $(ENABLE_LOGGING)),true)
	LOCAL_CFLAGS += -DLOG_ENABLED
endif

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils
	
LOCAL_STATIC_LIBRARIES += \


LOCAL_LDLIBS += -llog -ldl -L$(SYSROOT)/usr/lib

include $(BUILD_SHARED_LIBRARY)
