THEOS_DEVICE_IP=192.168.1.106
include /Users/mrsiu/theos/makefiles/common.mk

TWEAK_NAME = tigerhook
tigerhook_FILES = Tweak.xm
tigerhook_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 tigerlive"

include $(THEOS_MAKE_PATH)/aggregate.mk
