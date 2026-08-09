TARGET = iphone:clang:16.5:15.0
FINALPACKAGE = 1


THEOS_PACKAGE_SCHEME ?= rootless
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Pusher
Pusher_FILES = Tweak.xm NSPTestPush.xm UIImage+ReplaceColor.m iOSVersion.m
Pusher_FRAMEWORKS = UIKit Foundation
Pusher_PRIVATE_FRAMEWORKS = AppSupport BulletinBoard
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
Pusher_LIBRARIES += roothide
endif

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
	# install.exec "killall -9 Preferences"
SUBPROJECTS += Preferences
SUBPROJECTS += Flipswitch
include $(THEOS_MAKE_PATH)/aggregate.mk

.PHONY: package-all
package-all:
	$(MAKE) -j1 clean THEOS_PACKAGE_SCHEME=rootless
	$(MAKE) -j1 package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
	$(MAKE) -j1 clean THEOS_PACKAGE_SCHEME=roothide
	$(MAKE) -j1 package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
