// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_intent_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Text shared into Zappit from YouTube, Netflix, TikTok, Instagram…
///
/// The first http(s) URL in the text is opened in the selected browser, the
/// same way as the link panel. If the app was launched by the share, the URL
/// waits until the browser is reachable (auth + Ably + selection), up to a
/// short timeout, then fails with a notice. The app stays on screen.

@ProviderFor(ShareIntentController)
final shareIntentControllerProvider = ShareIntentControllerProvider._();

/// Text shared into Zappit from YouTube, Netflix, TikTok, Instagram…
///
/// The first http(s) URL in the text is opened in the selected browser, the
/// same way as the link panel. If the app was launched by the share, the URL
/// waits until the browser is reachable (auth + Ably + selection), up to a
/// short timeout, then fails with a notice. The app stays on screen.
final class ShareIntentControllerProvider
    extends $NotifierProvider<ShareIntentController, void> {
  /// Text shared into Zappit from YouTube, Netflix, TikTok, Instagram…
  ///
  /// The first http(s) URL in the text is opened in the selected browser, the
  /// same way as the link panel. If the app was launched by the share, the URL
  /// waits until the browser is reachable (auth + Ably + selection), up to a
  /// short timeout, then fails with a notice. The app stays on screen.
  ShareIntentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shareIntentControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shareIntentControllerHash();

  @$internal
  @override
  ShareIntentController create() => ShareIntentController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$shareIntentControllerHash() =>
    r'8a5e5ccbf887743fc823ece356e904a74b3e0691';

/// Text shared into Zappit from YouTube, Netflix, TikTok, Instagram…
///
/// The first http(s) URL in the text is opened in the selected browser, the
/// same way as the link panel. If the app was launched by the share, the URL
/// waits until the browser is reachable (auth + Ably + selection), up to a
/// short timeout, then fails with a notice. The app stays on screen.

abstract class _$ShareIntentController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
