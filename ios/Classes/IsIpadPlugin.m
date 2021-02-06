#import "IsIpadPlugin.h"
#if __has_include(<is_ipad/is_ipad-Swift.h>)
#import <is_ipad/is_ipad-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "is_ipad-Swift.h"
#endif

@implementation IsIpadPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIsIpadPlugin registerWithRegistrar:registrar];
}
@end
