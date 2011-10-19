# Se procede a copiar los apks
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/apps/ -name '*.apk' -printf '%p:system/app/%f ')

# Se procede a copiar los lib
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/apps/ -name '*.so'  -printf '%p:system/lib/%f ')
