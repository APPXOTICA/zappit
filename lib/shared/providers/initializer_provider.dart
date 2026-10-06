import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/providers/remote_config_instance_provider.dart';
import 'package:zappit/core/realtime/realtime_service.dart';

part 'initializer_provider.g.dart';

@riverpod
Future<bool> initializer(Ref ref) async {
  await Future.wait([
    ref.read(remoteConfigInstanceProvider.future),
    ref.read(realtimeServiceProvider).init(),
  ]);
  return true;
}
