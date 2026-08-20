VIPER4ANDROIDFX_PATH := vendor/ViPER4AndroidFX

BUILD_PATH := $(VIPER4ANDROIDFX_PATH)

PRODUCT_SOONG_NAMESPACES += \
   $(VIPER4ANDROIDFX_PATH)

PRODUCT_PACKAGES += \
    ViPER4AndroidFX \
    libv4a_aidl

# SEPolicy
ifneq ($(filter sailfish marlin walleye taimen blueline crosshatch sargo bonito flame coral redfin oriole raven panther cheetah lynx felix shiba husky akita tokay caiman komodo tegu frankel blazer mustang rango stallion, $(LINEAGE_BUILD)),)
BOARD_VENDOR_SEPOLICY_DIRS += \
   $(VIPER4ANDROIDFX_PATH)/sepolicy/audioserver_viper4android_pixel.te
else
BOARD_VENDOR_SEPOLICY_DIRS += \
   $(VIPER4ANDROIDFX_PATH)/sepolicy/audioserver_viper4android.te
endif

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/ViPER4AndroidFX/ViPER4AndroidFX.apk
