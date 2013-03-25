#import <UIKit/UIKit.h>
#import <notify.h>

// Required
extern "C" BOOL isCapable() {
	return YES;
}

// Required
extern "C" BOOL isEnabled() {
	return YES;
}

// Optional
// Faster isEnabled. Remove this if it's not necessary. Keep it if isEnabled() is expensive and you can make it faster here.
extern "C" BOOL getStateFast() {
	return isEnabled();
}

// Required
extern "C" void setState(BOOL enabled) {
	// Set State!
	notify_post("jp.takamii.debbkup");
}

// Required
// How long the toggle takes to toggle, in seconds.
extern "C" float getDelayTime() {
	return 3.0f;
}

// vim:ft=objc
