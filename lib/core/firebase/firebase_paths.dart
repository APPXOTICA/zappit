/// RTDB and Firestore paths shared with the extension.
abstract final class FirebasePaths {
  // RTDB
  static String playback(String uid) => 'playback/$uid';
  static String session(String uid) => 'session/$uid';
  static String selectedInstance(String uid) => 'session/$uid/selectedInstanceId';
  static String appOnline(String uid) => 'session/$uid/appOnline';

  // Firestore
  static const users = 'users';
  static const browserTabs = 'browserTabs';
}
