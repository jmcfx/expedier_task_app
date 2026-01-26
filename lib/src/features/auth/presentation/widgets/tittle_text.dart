import 'package:flutter/material.dart';

class TittleText extends StatelessWidget {
  const TittleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}
