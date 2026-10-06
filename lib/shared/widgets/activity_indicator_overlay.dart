import 'package:zappit/shared/providers/activity_indicator_provider.dart';
import 'package:zappit/shared/widgets/default_activity_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityIndicatorOverlay extends ConsumerWidget {
  const ActivityIndicatorOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(activityIndicatorProvider);

    return IgnorePointer(
      ignoring: !state.isLoading,
      child: AnimatedOpacity(
        opacity: state.isLoading ? 1.0 : 0.0,
        duration: Durations.short4,
        child: Container(
          color: Colors.black45,
          child: DefaultActivityIndicator(
            text: state.message,
            dimmed: true,
          ),
        ),
      ),
    );
  }
}
