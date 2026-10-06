// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_indicator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActivityIndicator)
final activityIndicatorProvider = ActivityIndicatorProvider._();

final class ActivityIndicatorProvider
    extends $NotifierProvider<ActivityIndicator, ActivityIndicatorState> {
  ActivityIndicatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activityIndicatorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activityIndicatorHash();

  @$internal
  @override
  ActivityIndicator create() => ActivityIndicator();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ActivityIndicatorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ActivityIndicatorState>(value),
    );
  }
}

String _$activityIndicatorHash() => r'996f3d9e717b0c344aae2bc9495c1396f0f5cc8e';

abstract class _$ActivityIndicator extends $Notifier<ActivityIndicatorState> {
  ActivityIndicatorState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<ActivityIndicatorState, ActivityIndicatorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ActivityIndicatorState, ActivityIndicatorState>,
              ActivityIndicatorState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
