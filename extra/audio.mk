# Se procede a copiar los sonidos propios de GP0
PRODUCT_COPY_FILES += $(shell find device/geeksphone/zero/extra/audio/ -name '*.mp3' -printf '%p:system/media/audio/ringtones/%f ')
