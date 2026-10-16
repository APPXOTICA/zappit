// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_bus.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Sends every command to the selected browser and waits for its `ack`.
///
/// - No selected browser: returns a local `no_browser` ack without sending.
/// - No ack within [defaultTimeout]: shows "Browser not responding" at the top.
/// - Failed ack: shows a snackbar with the reason, unless the caller handles it.

@ProviderFor(commandBus)
final commandBusProvider = CommandBusProvider._();

/// Sends every command to the selected browser and waits for its `ack`.
///
/// - No selected browser: returns a local `no_browser` ack without sending.
/// - No ack within [defaultTimeout]: shows "Browser not responding" at the top.
/// - Failed ack: shows a snackbar with the reason, unless the caller handles it.

final class CommandBusProvider
    extends $FunctionalProvider<CommandBus, CommandBus, CommandBus>
    with $Provider<CommandBus> {
  /// Sends every command to the selected browser and waits for its `ack`.
  ///
  /// - No selected browser: returns a local `no_browser` ack without sending.
  /// - No ack within [defaultTimeout]: shows "Browser not responding" at the top.
  /// - Failed ack: shows a snackbar with the reason, unless the caller handles it.
  CommandBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commandBusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commandBusHash();

  @$internal
  @override
  $ProviderElement<CommandBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CommandBus create(Ref ref) {
    return commandBus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommandBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommandBus>(value),
    );
  }
}

String _$commandBusHash() => r'1b86f8e6cf2015890328f87f2f56b24825174366';
