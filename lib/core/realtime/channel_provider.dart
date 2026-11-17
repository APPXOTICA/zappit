import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/features/auth/data/models/auth_state.dart';
import 'package:zappit/features/auth/presentation/controllers/auth_state_provider.dart';
import 'package:zappit/features/pairing/pairing_service.dart';

part 'channel_provider.g.dart';

/// Realtime 채널 이름 규칙을 한 곳에서 관리합니다.
///
/// 예: `zappit:<userId>`
abstract final class RealtimeChannelNames {
  static String user(String userId) => 'zappit:$userId';
}

/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 됐거나 이 폰이 연결(QR)되지 않은 경우 null. 연결 전(QR 화면)에
/// 채널에 들어가면 같은 계정의 확장이 앱의 포그라운드/백그라운드 전환을
/// 연결/끊김으로 보고 소리를 낸다.
@Riverpod(keepAlive: true)
String? channelName(Ref ref) {
  final state = ref.watch(authStateProvider);

  // AuthState가 authenticated일 때만 FirebaseAuth currentUser가 존재한다고 가정.
  // (authStateProvider 내부에서 listen으로 상태 관리)
  if (state is! AuthStateAuthenticated) return null;
  final userId = ref.read(authStateProvider.notifier).userId;
  if (userId == null) return null;
  if (ref.watch(phonePairedProvider).value != true) return null;

  return RealtimeChannelNames.user(userId);
}



