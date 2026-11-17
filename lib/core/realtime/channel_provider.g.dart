// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 됐거나 이 폰이 연결(QR)되지 않은 경우 null. 연결 전(QR 화면)에
/// 채널에 들어가면 같은 계정의 확장이 앱의 포그라운드/백그라운드 전환을
/// 연결/끊김으로 보고 소리를 낸다.

@ProviderFor(channelName)
final channelNameProvider = ChannelNameProvider._();

/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 됐거나 이 폰이 연결(QR)되지 않은 경우 null. 연결 전(QR 화면)에
/// 채널에 들어가면 같은 계정의 확장이 앱의 포그라운드/백그라운드 전환을
/// 연결/끊김으로 보고 소리를 낸다.

final class ChannelNameProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  /// 현재 로그인 유저의 user-channel 이름을 제공합니다.
  ///
  /// 로그인 안 됐거나 이 폰이 연결(QR)되지 않은 경우 null. 연결 전(QR 화면)에
  /// 채널에 들어가면 같은 계정의 확장이 앱의 포그라운드/백그라운드 전환을
  /// 연결/끊김으로 보고 소리를 낸다.
  ChannelNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'channelNameProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$channelNameHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return channelName(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$channelNameHash() => r'371ad069d19e2d49e7363fa8ead4222059d9eea3';
