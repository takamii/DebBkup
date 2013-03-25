#import <Preferences/Preferences.h>

@interface DebBkupListController: PSListController {
}
@end

@implementation DebBkupListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"DebBkup" target:self] retain];
	}
	return _specifiers;
}

- (void)openTwitter:(id)specifier {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/takamii/"]];
}

- (void)openGithub:(id)specifier {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/takamii/DebBkup/"]];
}

- (void)openReadme:(id)specifier {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.evernote.com/shard/s7/sh/0a3a6305-448e-4b3f-90ba-93bcb8ca84d6/0cdfd1b21d9c0cfe2727ba446dabbc59"]];
}

@end
// vim:ft=objc
