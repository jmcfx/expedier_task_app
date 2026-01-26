import 'package:expedier_task_app/src/shared/bounce_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BounceWrapper(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 109.w),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(15).r),
          ),
          child: Text(
            text,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
