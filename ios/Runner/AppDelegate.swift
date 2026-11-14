import DeviceCheck
import Flutter
import Security
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
    registerDeviceChannel(engineBridge.applicationRegistrar.messenger())
  }

  /// Phone facts for pairing and the Pro preview (lib/features/pairing/phone_identity.dart).
  /// `getMarker`: a random value kept in the Keychain, which outlives an app
  /// reinstall (not an erase). `deviceCheckToken`: a DeviceCheck token the
  /// server uses to read and set this device's two bits at Apple; null on the
  /// simulator.
  private func registerDeviceChannel(_ messenger: FlutterBinaryMessenger) {
    let channel = FlutterMethodChannel(name: "tv.zappit/device", binaryMessenger: messenger)
    channel.setMethodCallHandler { call, result in
      switch call.method {
      case "getMarker":
        result(Self.keychainMarker())
      case "deviceCheckToken":
        guard DCDevice.current.isSupported else {
          result(nil)
          return
        }
        DCDevice.current.generateToken { data, error in
          DispatchQueue.main.async {
            if let data = data {
              result(data.base64EncodedString())
            } else {
              result(nil)
            }
          }
        }
      default:
        result(FlutterMethodNotImplemented)
      }
    }
  }

  private static let markerAccount = "tv.zappit.phoneMarker"

  private static func keychainMarker() -> String? {
    let query: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrAccount as String: markerAccount,
      kSecReturnData as String: true,
      kSecMatchLimit as String: kSecMatchLimitOne,
    ]
    var item: CFTypeRef?
    if SecItemCopyMatching(query as CFDictionary, &item) == errSecSuccess,
       let data = item as? Data, let value = String(data: data, encoding: .utf8), !value.isEmpty {
      return value
    }
    let value = UUID().uuidString
    let add: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrAccount as String: markerAccount,
      kSecValueData as String: Data(value.utf8),
      // Not ThisDeviceOnly: an encrypted backup carries it to a new phone, which is fine.
      kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock,
    ]
    let status = SecItemAdd(add as CFDictionary, nil)
    return status == errSecSuccess ? value : nil
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
