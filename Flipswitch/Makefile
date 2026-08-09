include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = PusherFlipswitch
PusherFlipswitch_FILES = Switch.xm
PusherFlipswitch_FRAMEWORKS = UIKit
PusherFlipswitch_LIBRARIES = flipswitch
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
PusherFlipswitch_LIBRARIES += roothide
endif
PusherFlipswitch_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk
