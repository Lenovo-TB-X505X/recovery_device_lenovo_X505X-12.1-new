#
# Copyright 2019 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Allow missing deps (needed for TWRP minimal builds)
ALLOW_MISSING_DEPENDENCIES := true

# Device codename
PRODUCT_RELEASE_NAME := X505X

# Inherit base AOSP configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# -----------------------------------------------------------------------------
# Device identity
# -----------------------------------------------------------------------------
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X505X
PRODUCT_MANUFACTURER := LENOVO

# -----------------------------------------------------------------------------
# TWRP specific packages
# -----------------------------------------------------------------------------

# Qualcomm decryption (FBE/FDE support)
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Timezone data for recovery
PRODUCT_PACKAGES += \
    tzdata_twrp

# Keystore2 (required for Android 11+ encryption handling)
PRODUCT_PACKAGES += \
    android.system.keystore2

# -----------------------------------------------------------------------------
# Optional: Debug / stability improvements
# -----------------------------------------------------------------------------

# Use recovery-specific properties if needed
# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.twrp.debug=1
