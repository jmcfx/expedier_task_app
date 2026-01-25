import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key, required this.text, required this.image});
  final String text, image;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      spacing: 14.w,
      children: [
        Image.asset(image, height: 37.r, width: 37.r),
        Text(text, style: theme.textTheme.displayMedium),
      ],
    );
  }
}
