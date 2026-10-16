// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 된 경우 null.

@ProviderFor(channelName)
final channelNameProvider = ChannelNameProvider._();

/// 현재 로그인 유저의 user-channel 이름을 제공합니다.
///
/// 로그인 안 된 경우 null.

final class ChannelNameProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  /// 현재 로그인 유저의 user-channel 이름을 제공합니다.
  ///
  /// 로그인 안 된 경우 null.
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

String _$channelNameHash() => r'1f102430af9de5c8e0184c141725d7ebdf531ee2';
