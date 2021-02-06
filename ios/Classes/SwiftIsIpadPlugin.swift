import Flutter
import UIKit

public class SwiftIsIpadPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_ipad", binaryMessenger: registrar.messenger())
    let instance = SwiftIsIpadPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isIpad":
        result(UIDevice.current.userInterfaceIdiom == .pad)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
