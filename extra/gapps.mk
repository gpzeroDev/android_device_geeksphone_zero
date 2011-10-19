# Se procede a copiar los apks
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/gapps/ -name '*.apk' -printf '%p:system/app/%f ')

# Se procede a copiar los lib
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/gapps/ -name '*.so'  -printf '%p:system/lib/%f ')

# Se procede a copiar los jar
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/gapps/ -name '*.jar' -printf '%p:system/framework/%f ')

# Se procede a copiar los xml (permissions)
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/gapps/ -name '*.xml' -printf '%p:system/etc/permissions/%f ')
