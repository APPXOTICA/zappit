import 'package:flutter/material.dart';

class DefaultActivityIndicator extends StatelessWidget {
  const DefaultActivityIndicator({
    super.key,
    this.text,
    this.dimmed = true,
  });

  final String? text;
  final bool? dimmed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return Stack(
      children: [
        Container(
          color: dimmed! ? Colors.black54 : Colors.transparent,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                color: colorScheme.primary,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  text ?? '',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
