import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Pop extends StatelessWidget {
  const Pop({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap ?? () => context.router.pop(),
      child: Row(
        mainAxisSize: .min,
        children: [
          Container(
            padding: EdgeInsets.all(15.27).r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).r,
              border: Border.all(
                color: theme.colorScheme.primaryContainer,
                width: 1.w,
              ),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(AppIcons.sideArrow, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
