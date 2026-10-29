import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    registerShareChannel(engineBridge.applicationRegistrar.messenger())
  }

  /// Text the Share Extension left in the App Group (`ShareViewController`),
  /// read once: `getSharedUrl` returns it and clears it.
  private func registerShareChannel(_ messenger: FlutterBinaryMessenger) {
    let channel = FlutterMethodChannel(name: "tv.zappit/share", binaryMessenger: messenger)
    channel.setMethodCallHandler { call, result in
      guard call.method == "getSharedUrl" else {
        result(FlutterMethodNotImplemented)
        return
      }
      let defaults = UserDefaults(suiteName: "group.tv.zappit")
      let text = defaults?.string(forKey: "Url")
      defaults?.removeObject(forKey: "Url")
      result(text)
    }
  }
}
