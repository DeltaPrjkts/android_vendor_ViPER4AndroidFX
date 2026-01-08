## ViPER4Android FX

Integrate V4A by completing these three steps:

1.  **Build System:** Add the config to **`device.mk`**:

    ```makefile
    $(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)
    ```

2.  **SELinux Policy:** Add these rules to your **`audioserver.te`** file:

    ```
    get_prop(audioserver, vendor_audio_prop) # If Google or MTK device skip line

    allow audioserver unlabeled:file { read write open getattr };
    allow hal_audio_default hal_audio_default:process { execmem };
    ```
