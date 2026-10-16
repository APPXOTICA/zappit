import 'package:flutter/foundation.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/protocol/remote_command.dart';

part 'voice_command_service.g.dart';

/// Voice Control pipeline (Notion: Voice Command). Interface only for now.
///
/// Planned: Sherpa-ONNX keyword spotting waits for "Hey Zappit" while the app
/// is in the foreground and Voice Control is on → earcon + haptic →
/// speech_to_text (1.2 s silence, 10 s max) → Gemini function calling →
/// [RemoteCommand.fromFunctionCall] → CommandBus with `source: voice`.
abstract interface class VoiceCommandService {
  /// Microphone (and on iOS speech recognition) permission. Asked the first
  /// time Voice Control is turned on.
  Future<bool> requestPermissions();

  /// Starts listening for the wake word. No-op when already running.
  Future<void> start();

  /// Stops listening (app in background, Voice Control off).
  Future<void> stop();

  /// Turns a transcript into a command. Null if nothing matched.
  Future<RemoteCommand?> interpret(String transcript);

  bool get isListening;
}

@Riverpod(keepAlive: true)
VoiceCommandService voiceCommandService(Ref ref) => _NotImplementedVoiceService();

/// Placeholder until the pipeline is implemented.
class _NotImplementedVoiceService implements VoiceCommandService {
  @override
  bool get isListening => false;

  @override
  Future<bool> requestPermissions() async => true;

  @override
  Future<void> start() async => debugPrint('VoiceCommandService.start: not implemented yet');

  @override
  Future<void> stop() async {}

  @override
  Future<RemoteCommand?> interpret(String transcript) async => null;
}
