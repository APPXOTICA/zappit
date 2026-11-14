// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zappit_channel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// App's own Ably connection state. Subscribes before reading the current
/// value so a change in between isn't lost.

@ProviderFor(ablyConnected)
final ablyConnectedProvider = AblyConnectedProvider._();

/// App's own Ably connection state. Subscribes before reading the current
/// value so a change in between isn't lost.

final class AblyConnectedProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  /// App's own Ably connection state. Subscribes before reading the current
  /// value so a change in between isn't lost.
  AblyConnectedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ablyConnectedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ablyConnectedHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return ablyConnected(ref);
  }
}

String _$ablyConnectedHash() => r'e6281e613bd1d32eb89c3472fb218f4e90dc7be4';

/// The signed-in user's channel `zappit:{uid}` on the current client, or
/// null when signed out.
///
/// Attached explicitly whenever the connection comes up. An attach (or the
/// implicit one in presence.enter and subscribe) made while the connection
/// is closed or not yet connecting is dropped and never retried, and sign-in
/// builds this before the connection opens: the app then never entered
/// presence and saw no browser.
///
/// Rebuilt when the client is replaced (account change). Never detached
/// here: the old client is closed then, and a rebuild for the same client
/// would detach the very channel the new build returns.

@ProviderFor(zappitChannel)
final zappitChannelProvider = ZappitChannelProvider._();

/// The signed-in user's channel `zappit:{uid}` on the current client, or
/// null when signed out.
///
/// Attached explicitly whenever the connection comes up. An attach (or the
/// implicit one in presence.enter and subscribe) made while the connection
/// is closed or not yet connecting is dropped and never retried, and sign-in
/// builds this before the connection opens: the app then never entered
/// presence and saw no browser.
///
/// Rebuilt when the client is replaced (account change). Never detached
/// here: the old client is closed then, and a rebuild for the same client
/// would detach the very channel the new build returns.

final class ZappitChannelProvider
    extends
        $FunctionalProvider<
          ably.RealtimeChannel?,
          ably.RealtimeChannel?,
          ably.RealtimeChannel?
        >
    with $Provider<ably.RealtimeChannel?> {
  /// The signed-in user's channel `zappit:{uid}` on the current client, or
  /// null when signed out.
  ///
  /// Attached explicitly whenever the connection comes up. An attach (or the
  /// implicit one in presence.enter and subscribe) made while the connection
  /// is closed or not yet connecting is dropped and never retried, and sign-in
  /// builds this before the connection opens: the app then never entered
  /// presence and saw no browser.
  ///
  /// Rebuilt when the client is replaced (account change). Never detached
  /// here: the old client is closed then, and a rebuild for the same client
  /// would detach the very channel the new build returns.
  ZappitChannelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'zappitChannelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$zappitChannelHash();

  @$internal
  @override
  $ProviderElement<ably.RealtimeChannel?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ably.RealtimeChannel? create(Ref ref) {
    return zappitChannel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ably.RealtimeChannel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ably.RealtimeChannel?>(value),
    );
  }
}

String _$zappitChannelHash() => r'05c1efd65b3104872bd09a55bc9bcff39a8fc329';

@ProviderFor(channelEvents)
final channelEventsProvider = ChannelEventsProvider._();

final class ChannelEventsProvider
    extends
        $FunctionalProvider<ChannelEventBus, ChannelEventBus, ChannelEventBus>
    with $Provider<ChannelEventBus> {
  ChannelEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'channelEventsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$channelEventsHash();

  @$internal
  @override
  $ProviderElement<ChannelEventBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ChannelEventBus create(Ref ref) {
    return channelEvents(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChannelEventBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChannelEventBus>(value),
    );
  }
}

String _$channelEventsHash() => r'ea5513d93b6c9581b150e9ea3e417cb6a7aeb8de';

/// Browsers online on the channel, and the app's own presence.
///
/// The app enters presence while in the foreground and leaves when it goes
/// to the background, so the extension stops writing RTDB while nobody
/// watches. It re-enters whenever the channel re-attaches.
///
/// After a long time away the list is dropped on resume: the extension may
/// have left Ably meanwhile (it closes Ably 10 min after the app leaves) and
/// the app, suspended, never got the leave. The list comes back from a read
/// made once the app's own enter went through, or from presence events, so
/// nothing is sent to a browser that is not there yet.

@ProviderFor(BrowserPresence)
final browserPresenceProvider = BrowserPresenceProvider._();

/// Browsers online on the channel, and the app's own presence.
///
/// The app enters presence while in the foreground and leaves when it goes
/// to the background, so the extension stops writing RTDB while nobody
/// watches. It re-enters whenever the channel re-attaches.
///
/// After a long time away the list is dropped on resume: the extension may
/// have left Ably meanwhile (it closes Ably 10 min after the app leaves) and
/// the app, suspended, never got the leave. The list comes back from a read
/// made once the app's own enter went through, or from presence events, so
/// nothing is sent to a browser that is not there yet.
final class BrowserPresenceProvider
    extends $NotifierProvider<BrowserPresence, List<BrowserInstance>> {
  /// Browsers online on the channel, and the app's own presence.
  ///
  /// The app enters presence while in the foreground and leaves when it goes
  /// to the background, so the extension stops writing RTDB while nobody
  /// watches. It re-enters whenever the channel re-attaches.
  ///
  /// After a long time away the list is dropped on resume: the extension may
  /// have left Ably meanwhile (it closes Ably 10 min after the app leaves) and
  /// the app, suspended, never got the leave. The list comes back from a read
  /// made once the app's own enter went through, or from presence events, so
  /// nothing is sent to a browser that is not there yet.
  BrowserPresenceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'browserPresenceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$browserPresenceHash();

  @$internal
  @override
  BrowserPresence create() => BrowserPresence();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<BrowserInstance> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<BrowserInstance>>(value),
    );
  }
}

String _$browserPresenceHash() => r'3a4bbcd15eded73cd2b91fbc0de8269918365bd4';

/// Browsers online on the channel, and the app's own presence.
///
/// The app enters presence while in the foreground and leaves when it goes
/// to the background, so the extension stops writing RTDB while nobody
/// watches. It re-enters whenever the channel re-attaches.
///
/// After a long time away the list is dropped on resume: the extension may
/// have left Ably meanwhile (it closes Ably 10 min after the app leaves) and
/// the app, suspended, never got the leave. The list comes back from a read
/// made once the app's own enter went through, or from presence events, so
/// nothing is sent to a browser that is not there yet.

abstract class _$BrowserPresence extends $Notifier<List<BrowserInstance>> {
  List<BrowserInstance> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<BrowserInstance>, List<BrowserInstance>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<BrowserInstance>, List<BrowserInstance>>,
              List<BrowserInstance>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

/// Publishes `command` messages on the user's channel.

@ProviderFor(commandPublisher)
final commandPublisherProvider = CommandPublisherProvider._();

/// Publishes `command` messages on the user's channel.

final class CommandPublisherProvider
    extends
        $FunctionalProvider<
          CommandPublisher,
          CommandPublisher,
          CommandPublisher
        >
    with $Provider<CommandPublisher> {
  /// Publishes `command` messages on the user's channel.
  CommandPublisherProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commandPublisherProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commandPublisherHash();

  @$internal
  @override
  $ProviderElement<CommandPublisher> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CommandPublisher create(Ref ref) {
    return commandPublisher(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommandPublisher value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommandPublisher>(value),
    );
  }
}

String _$commandPublisherHash() => r'a16b8e7013ac614c7ba6f0682faa1cfb7db6552d';
