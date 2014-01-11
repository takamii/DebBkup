ARCHS = armv7 arm64
include theos/makefiles/common.mk

LIBRARY_NAME = Toggle
Toggle_FILES = Toggle.mm
Toggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/DebBkup

include $(THEOS_MAKE_PATH)/library.mk

BUNDLE_NAME = DebBkup
DebBkup_FILES = Preference.mm
DebBkup_INSTALL_PATH = /Library/PreferenceBundles
DebBkup_FRAMEWORKS = UIKit
DebBkup_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DebBkup.plist$(ECHO_END)
