import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';
import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';
import 'package:expedier_task_app/src/shared/custom_padding.dart';
import 'package:expedier_task_app/src/shared/pop.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelfieVerificationPage extends StatefulWidget {
  const SelfieVerificationPage({super.key});

  @override
  State<SelfieVerificationPage> createState() => _SelfieVerificationPageState();
}

class _SelfieVerificationPageState extends State<SelfieVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 37.w,
              children: [
                Pop(),
                Text(
                  "Selfie verification",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 20.sp,
                  ),
                  softWrap: true,
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Text(
              "We will complete the photo in your document with your selfie to confirm your identity",
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 14.sp,
                height: (16 / 14).r,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 45.h),
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                SvgPicture.asset(AppIcons.focus, width: 215.w, height: 297.h),
                SvgPicture.asset(AppIcons.d3, width: 182.w, height: 250.h),
              ],
            ),
            SizedBox(height: 45.h),
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(14).r,
              ),
              padding: EdgeInsets.all(10).r,
              child: Row(
                spacing: 5.w,
                children: [
                  SvgPicture.asset(
                    AppIcons.lockLight,
                    width: 24.r,
                    height: 24.r,
                  ),
                  Text(
                    "The data you share will be encrypted, stored\nsecurely, and only used to verify your\nidentity",
                    style: theme.textTheme.bodySmall?.copyWith(
                      height: (16 / 14).r,
                    ),
                    textAlign: .justify,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.h),
            AppButton(
              text: 'Open Camera',
              onTap: () {
                context.router.push(
                  VerificationSuccessRoute(onContinue: () {}),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
