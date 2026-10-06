// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PresenceState)
final presenceStateProvider = PresenceStateProvider._();

final class PresenceStateProvider
    extends $StreamNotifierProvider<PresenceState, ExtensionPresence> {
  PresenceStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'presenceStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$presenceStateHash();

  @$internal
  @override
  PresenceState create() => PresenceState();
}

String _$presenceStateHash() => r'76a9ec1be29534e7cd1d949083a7aec309730c52';

abstract class _$PresenceState extends $StreamNotifier<ExtensionPresence> {
  Stream<ExtensionPresence> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ExtensionPresence>, ExtensionPresence>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ExtensionPresence>, ExtensionPresence>,
              AsyncValue<ExtensionPresence>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
