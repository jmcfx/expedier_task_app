import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/app/router/app_router.gr.dart';
import 'package:expedier_task_app/shared/app_button.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';
import 'package:expedier_task_app/shared/pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 104.w,
              children: [
                Pop(),
                Text(
                  "OTP",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 20.sp,
                  ),
                  softWrap: true,
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Text(
              "Enter OTP Code",
              style: theme.textTheme.bodyMedium?.copyWith(fontSize: 20.sp),
            ),
            SizedBox(height: 15.h),
            Text.rich(
              style: theme.textTheme.bodySmall,
              TextSpan(
                children: [
                  TextSpan(text: "We have just sent a code to "),
                  TextSpan(
                    text: "email@gmail.com",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 56.h),

            SizedBox(height: 56.h),

            AppButton(
              onTap: () {
                context.router.push(
                  VerificationSuccessRoute(
                    onContinue: () =>
                        context.router.replace(UserCredentialsRoute()),
                  ),
                );
              },
              text: 'Enter',
            ),
            SizedBox(height: 24.h),
            Text(
              "Resend in (30)s",
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
