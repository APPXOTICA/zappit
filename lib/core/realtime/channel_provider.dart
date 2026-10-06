import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';

part 'channel_provider.g.dart';

/// Realtime 채널 이름 규칙을 한 곳에서 관리합니다.
///
/// 예: zappit:user_<userId>
abstract final class RealtimeChannelNames {
  static String user(String userId) => 'zappit:user_$userId';
}

/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 된 경우 null.
@riverpod
String? channelName(Ref ref) {
  final state = ref.watch(authStateProvider);

  // AuthState가 authenticated일 때만 FirebaseAuth currentUser가 존재한다고 가정.
  // (authStateProvider 내부에서 listen으로 상태 관리)
  if (state is! AuthStateAuthenticated) return null;
  final userId = ref.read(authStateProvider.notifier).userId;
  if (userId == null) return null;

  return RealtimeChannelNames.user(userId);
}



