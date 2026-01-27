import 'package:expedier_task_app/src/shared/bounce_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap,
    required this.text,
    this.horizontal,
    this.color,
    this.fontColor,
    this.border,
  });

  final VoidCallback? onTap;

  final String text;
  final double? horizontal;
  final Color? color, fontColor;

  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BounceWrapper(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: 21.h,
            horizontal: horizontal ?? 109.w,
          ),
          decoration: BoxDecoration(
            color: color ?? theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(15).r),
            border: border,
          ),
          child: Text(
            text,
            style: theme.textTheme.titleSmall!.copyWith(
              color: fontColor ?? theme.scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
