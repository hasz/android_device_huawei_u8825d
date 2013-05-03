# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8825d/u8825d.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_u8825d
PRODUCT_DEVICE := u8825d
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI U8825D
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8825D

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8825d \
	BUILD_FINGERPRINT=huawei/u8825d:4.1.2/JZO54K/223139:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 223139 release" \
	BUILD_NUMBER=223139
