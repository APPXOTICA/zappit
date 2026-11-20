/// Route paths.
abstract final class AppRoutes {
  static const loading = '/loading';
  /// First screen until this phone is paired: scan the extension's QR.
  static const pair = '/pair';
  /// Scan QR code while paired (remote's "Can't reach a browser").
  static const scan = '/scan';
  static const remote = '/remote';
  static const tabs = '/tabs';
  static const more = '/more';
  static const pro = '/pro';
  static const remoteSettings = '/remote-settings';
  static const webView = '/web';
  /// The same web view pushed from the right with a back button.
  static const webPage = '/web-page';
  /// First run, before the QR screen: install the extension, then scan.
  /// The QR screen's "How to install" button opens it again.
  static const onboarding = '/onboarding';
  static const supportedSites = '/supported-sites';
}
