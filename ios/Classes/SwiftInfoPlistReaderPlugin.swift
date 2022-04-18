import Flutter
import UIKit

public class SwiftInfoPlistReaderPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "info_plist_reader", binaryMessenger: registrar.messenger())
    let instance = SwiftInfoPlistReaderPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
         if call.method == "InfoPlist"  {
           let key = call.arguments["key"] as? String
          let value = Bundle.main.object(forInfoDictionaryKey: key)
          result(value)
      }
  }
}

