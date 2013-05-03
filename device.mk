$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/u8825d/u8825d-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8825d/overlay
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    lights.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    liboverlay \
    libgenlock \
    libmemalloc \
    libI420colorconvert \
    libhwcexternal \
    libhwcservice \
    libqdutils

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.msm7x27a \
    libloc_api-rpc
# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# iptables
PRODUCT_PACKAGES += \
    iptables \
    ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
    
PRODUCT_COPY_FILES += \
    device/huawei/u8825d/ramdisk/init.huawei.rc:root/init.huawei.rc \
	device/huawei/u8825d/ramdisk/init.target.rc:root/init.target.rc \
    device/huawei/u8825d/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8825d/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/huawei/u8825d/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc

PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/athtcmd_ram.bin:system/etc/firmware/ath6k/athtcmd_ram.bin \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/caldata_MSM8X25_C8825D.bin:system/etc/firmware/load/caldata.bin \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/fw-3.bin:system/etc/firmware/ath6k/fw-3.bin \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/nullTestFlow.bin:system/etc/firmware/ath6k/nullTestFlow.bin \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/softmac:system/etc/firmware/ath6k/softmac \
    device/huawei/u8825d/prebuilt/system/wifi/ath6k/utf.bin:system/etc/firmware/ath6k/utf.bin \
    device/huawei/u8825d/prebuilt/system/lib/modules/ar6000.ko:system/lib/modules/ar6000.ko \
    device/huawei/u8825d/prebuilt/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko

PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8825d/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/u8825d/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8825d/prebuilt/system/etc/AudioFilter_MSM8X25_U8825D.csv:system/etc/AudioFilter.csv \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/huawei/u8825d/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8825d/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8825d/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/huawei/u8825d/prebuilt/system/etc/init.qcom.rendering.sh:system/etc/init.qcom.rendering.sh \
    device/huawei/u8825d/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8825d/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8825d/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/u8825d/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
    
PRODUCT_COPY_FILES += \
    device/huawei/u8825d/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8825d/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8825d/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8825d/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8825d/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/u8825d/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/huawei/u8825d/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/u8825d/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/huawei/u8825d/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/u8825d/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/huawei/u8825d/prebuilt/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_u8825d
PRODUCT_DEVICE := u8825d
PRODUCT_BRAND := huawei

