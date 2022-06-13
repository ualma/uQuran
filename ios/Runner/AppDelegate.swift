import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController;
    let batteryChannel = FlutterMethodChannel.init(name: "myapp/CHANNEL",
                                                   binaryMessenger: controller as! FlutterBinaryMessenger);
    batteryChannel.setMethodCallHandler({
      (call: FlutterMethodCall, result: FlutterResult) -> Void in
      if ("getDocPath" == call.method) {
        let manager = FileManager.default
        let DocUrl:NSURL = manager.urls( for: FileManager.SearchPathDirectory.documentDirectory, in:FileManager.SearchPathDomainMask.userDomainMask)[0] as NSURL
        
        result(DocUrl.absoluteString)
      } else if ("getLibPath" == call.method) {
        let manager = FileManager.default
        let LibUrl:NSURL = manager.urls( for: FileManager.SearchPathDirectory.libraryDirectory, in:FileManager.SearchPathDomainMask.userDomainMask)[0] as NSURL
        result(LibUrl.absoluteString)
      }  else  {
        result(FlutterMethodNotImplemented);
      }
    });


    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
