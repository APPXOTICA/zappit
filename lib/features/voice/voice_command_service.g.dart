// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_command_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(voiceCommandService)
final voiceCommandServiceProvider = VoiceCommandServiceProvider._();

final class VoiceCommandServiceProvider
    extends
        $FunctionalProvider<
          VoiceCommandService,
          VoiceCommandService,
          VoiceCommandService
        >
    with $Provider<VoiceCommandService> {
  VoiceCommandServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'voiceCommandServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$voiceCommandServiceHash();

  @$internal
  @override
  $ProviderElement<VoiceCommandService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VoiceCommandService create(Ref ref) {
    return voiceCommandService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VoiceCommandService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VoiceCommandService>(value),
    );
  }
}

String _$voiceCommandServiceHash() =>
    r'65e5a702b2aeb5b6dd6d52189f4ea10778adea82';
