// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Live settings with optimistic local updates.

@ProviderFor(UserSettingsController)
final userSettingsControllerProvider = UserSettingsControllerProvider._();

/// Live settings with optimistic local updates.
final class UserSettingsControllerProvider
    extends $NotifierProvider<UserSettingsController, UserSettings> {
  /// Live settings with optimistic local updates.
  UserSettingsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userSettingsControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userSettingsControllerHash();

  @$internal
  @override
  UserSettingsController create() => UserSettingsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserSettings>(value),
    );
  }
}

String _$userSettingsControllerHash() =>
    r'0f8445e5d2bd77e8cf650d0ba7666c6d1bcfc316';

/// Live settings with optimistic local updates.

abstract class _$UserSettingsController extends $Notifier<UserSettings> {
  UserSettings build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<UserSettings, UserSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserSettings, UserSettings>,
              UserSettings,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
