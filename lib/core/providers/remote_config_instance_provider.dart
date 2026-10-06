import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/services/remote_config_service.dart';

part 'remote_config_instance_provider.g.dart';

/// App-wide Remote Config service.
///
/// `RemoteConfigService.init()` is idempotent.
@Riverpod(keepAlive: true)
Future<FirebaseRemoteConfig> remoteConfigInstance(Ref ref) async {
  final service = RemoteConfigService();
  await service.init();
  return service.instance;
}
