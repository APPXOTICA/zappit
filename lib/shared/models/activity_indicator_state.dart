import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_indicator_state.freezed.dart';

@freezed
abstract class ActivityIndicatorState with _$ActivityIndicatorState {
  const factory ActivityIndicatorState({
    @Default(false) bool isLoading,
    @Default('') String message,
  }) = _ActivityIndicatorState;
}