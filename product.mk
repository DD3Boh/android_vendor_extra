ifeq ($(TARGET_PRIVATE_BUILD),true)

# Lineage custom version
LINEAGE_VERSION=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-PRIVATE$(LINEAGE_EXTRAVERSION)-$(LINEAGE_BUILD)

# Themes
DEVICE_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/extra/overlay

# Fonts
ADDITIONAL_FONTS_FILE := vendor/extra/fonts/google-sans.xml

PRODUCT_COPY_FILES += \
    vendor/extra/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/extra/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/extra/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/extra/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/extra/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/extra/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf
endif
