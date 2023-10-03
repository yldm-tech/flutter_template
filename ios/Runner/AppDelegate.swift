import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    MethodChannelUtil(messager: controller.binaryMessenger)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


public class MethodChannelUtil{
  init(messager:FlutterBinaryMessenger){
    let channel = FlutterMethodChannel(name: "method_channel",binaryMessenger: messager)
    channel.setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      if (call.method == "getPlatformVersion") {
        result("iOS " + UIDevice.current.systemVersion)
      } else {
        result(FlutterMethodNotImplemented)
      }
    })
  }
}