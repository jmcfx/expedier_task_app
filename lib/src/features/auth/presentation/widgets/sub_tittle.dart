import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({
    super.key,
    required this.text,
    this.isPadded = true,
    this.color,
  });
  final String text;
  final bool isPadded;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isPadded ? 20.w : 0.w),
      child: Text(
        text,
        style: theme.textTheme.titleSmall?.copyWith(color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
