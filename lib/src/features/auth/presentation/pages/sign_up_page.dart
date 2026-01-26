import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';
import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/styled_text_field.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            AppIcons.expedierHeader2,
            fit: BoxFit.cover,
            height: 227.h,
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 44.h),
                  Text(
                    "Your financial journey begins here. Ready to take off?",
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      color: theme.textTheme.titleMedium?.color,
                    ),
                  ),
                  SizedBox(height: 44.h),
                  StyledTextField(
                    text: "Email",
                    contents: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 16.sp),
                        Row(
                          spacing: 18.w,
                          children: [
                            Flexible(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "email@gamil.com",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 44.h),
                  AppButton(
                    text: "Continue",
                    onTap: () {
                      context.router.push(EmailConfirmationRoute());
                    },
                  ),
                  SizedBox(height: 24.h),
                  AccountSwitchText(
                    onTap: () {
                      context.router.push(LoginRoute());
                    },
                    description: "Already have an account?",
                    text: "Sign In",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
