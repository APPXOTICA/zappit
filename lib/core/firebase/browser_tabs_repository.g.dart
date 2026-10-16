// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browser_tabs_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Tabs written by the selected browser while the Tabs screen is open
/// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.

@ProviderFor(browserTabs)
final browserTabsProvider = BrowserTabsFamily._();

/// Tabs written by the selected browser while the Tabs screen is open
/// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.

final class BrowserTabsProvider
    extends
        $FunctionalProvider<
          AsyncValue<BrowserTabsSnapshot?>,
          BrowserTabsSnapshot?,
          Stream<BrowserTabsSnapshot?>
        >
    with
        $FutureModifier<BrowserTabsSnapshot?>,
        $StreamProvider<BrowserTabsSnapshot?> {
  /// Tabs written by the selected browser while the Tabs screen is open
  /// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.
  BrowserTabsProvider._({
    required BrowserTabsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'browserTabsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$browserTabsHash();

  @override
  String toString() {
    return r'browserTabsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<BrowserTabsSnapshot?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<BrowserTabsSnapshot?> create(Ref ref) {
    final argument = this.argument as String;
    return browserTabs(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BrowserTabsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$browserTabsHash() => r'c7588efd8e6d7e521e6e845d6300ca19c4676bb4';

/// Tabs written by the selected browser while the Tabs screen is open
/// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.

final class BrowserTabsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<BrowserTabsSnapshot?>, String> {
  BrowserTabsFamily._()
    : super(
        retry: null,
        name: r'browserTabsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Tabs written by the selected browser while the Tabs screen is open
  /// (`users/{uid}/browserTabs/{instanceId}`). Stale documents are ignored.

  BrowserTabsProvider call(String instanceId) =>
      BrowserTabsProvider._(argument: instanceId, from: this);

  @override
  String toString() => r'browserTabsProvider';
}
