#
# Copyright 2016 The Android Open Source Project
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
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit Languages Support
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Release Name
PRODUCT_RELEASE_NAME := venus

# Inherit Device Configuration
$(call inherit-product, device/huawei/venus/device_venus.mk)

# Apps
PRODUCT_PACKAGES += \
	Launcher3
#	FMRadio \
#	CarrierConfig

# Device Identifiers
PRODUCT_DEVICE := venus
PRODUCT_NAME := cm_venus
PRODUCT_BRAND := Android
PRODUCT_MODEL := Ascend P9 Lite
PRODUCT_MANUFACTURER := Huawei

# Inherit Vendor configurations
$(call inherit-product, vendor/huawei/venus/vendor_venus.mk)
