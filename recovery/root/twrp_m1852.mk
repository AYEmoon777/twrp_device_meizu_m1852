#
# Copyright (C) 2018 The MoKee Open Source Project
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
# Release name
PRODUCT_RELEASE_NAME := m1852
DEVICE_PATH := device/meizu/m1852

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from device configuration
$(call inherit-product, device/meizu/m1852/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)


# And credits to XiNGRZ again
## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_m1852
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1852
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := M1852

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="M1852" \
    PRODUCT_NAME="meizu_M1852_CN" \
    PRIVATE_BUILD_DESC="meizu_M1852_CN-user 8.1.0 OPM1.171019.026 1592244368 release-keys"

BUILD_FINGERPRINT := Meizu/meizu_M1852_CN/M1852:8.1.0/OPM1.171019.026/1592244368:user/release-keys
