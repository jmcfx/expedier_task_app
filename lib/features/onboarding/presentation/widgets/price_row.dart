import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({super.key, required this.text, required this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      spacing: 1.w,
      children: [
        Text(text, style: theme.textTheme.displayMedium),
        SvgPicture.asset(image, height: 16.h, width: 16.w),
      ],
    );
  }
}
