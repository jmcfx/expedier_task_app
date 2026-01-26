import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/sub_tittle.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';
import 'package:expedier_task_app/src/shared/custom_padding.dart';
import 'package:expedier_task_app/src/shared/pop.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class VerificationSuccessPage extends StatelessWidget {
  const VerificationSuccessPage({super.key,this.onContinue });
  final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Pop(),
            SizedBox(height: 56.h),
            SvgPicture.asset(AppIcons.success, width: 263.w, height: 240.h),
            SizedBox(height: 79.h),
            Text(
              "Verification Success",
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.h),
            SubTittle(
              text:
                  "Congratulations your account is ready to use, now you can start trading cryptocurrency",
              isPadded: false,
            ),
            SizedBox(height: 56.h),
            AppButton(text: "Start Now", onTap: onContinue),
          ],
        ),
      ),
    );
  }
}
