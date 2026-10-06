import 'package:zappit/shared/models/activity_indicator_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activity_indicator_provider.g.dart';

@riverpod
class ActivityIndicator extends _$ActivityIndicator {
  @override
  ActivityIndicatorState build() {
    return const ActivityIndicatorState();
  }

  void show(String? message) {
    state = ActivityIndicatorState(isLoading: true, message: message ?? '');
  }

  void hide() {
    state = const ActivityIndicatorState();
  }
}