import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/firebase/firebase_paths.dart';
import 'package:zappit/core/firebase/session_repository.dart';
import 'package:zappit/protocol/json_utils.dart';
import 'package:zappit/protocol/messages.dart';

part 'browser_tabs_repository.g.dart';

/// Tabs written by the selected browser while the Tabs screen is open
/// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.
@riverpod
Stream<BrowserTabsSnapshot?> browserTabs(Ref ref, String instanceId) {
  final uid = ref.watch(currentUidProvider);
  if (uid == null) return Stream.value(null);
  return FirebaseFirestore.instance
      .collection(FirebasePaths.users)
      .doc(uid)
      .collection(FirebasePaths.browserTabs)
      .doc(instanceId)
      .snapshots()
      .map((snapshot) {
    final data = snapshot.data();
    if (data == null) return null;
    final updatedAt = data['updatedAt'];
    final millis = updatedAt is Timestamp ? updatedAt.millisecondsSinceEpoch : (asInt(updatedAt) ?? 0);
    return BrowserTabsSnapshot(tabs: BrowserTab.listFromJson(data), updatedAt: millis);
  });
}

class BrowserTabsSnapshot {
  const BrowserTabsSnapshot({required this.tabs, required this.updatedAt});

  final List<BrowserTab> tabs;
  final int updatedAt;

  /// Grouped by window, in window order.
  Map<int, List<BrowserTab>> get byWindow {
    final map = <int, List<BrowserTab>>{};
    for (final tab in tabs) {
      map.putIfAbsent(tab.windowId, () => []).add(tab);
    }
    return map;
  }
}
