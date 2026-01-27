import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/shared/bounce_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VerificationContainer extends StatelessWidget {
  const VerificationContainer({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BounceWrapper(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15).r,
            border: Border.all(
              color: theme.colorScheme.primaryContainer,
              width: 2.w,
            ),
          ),
          child: SvgPicture.asset(
            AppIcons.faceID,
            fit: BoxFit.cover,
            width: 32.r,
            height: 32.r,
          ),
        ),
      ),
    );
  }
}
