import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/shared/bounce_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: BounceWrapper(
        onTap: onTap,
        child: SvgPicture.asset(AppIcons.skip, fit: BoxFit.cover, height: 20.h),
      ),
    );
  }
}
