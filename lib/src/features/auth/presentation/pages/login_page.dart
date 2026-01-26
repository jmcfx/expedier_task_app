import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';

import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/styled_text_field.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            AppIcons.expedierHeader1,
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
                    "Welcome back!\nLet's pick up where you left off.",
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      color: theme.textTheme.titleMedium?.color,
                    ),
                  ),
                  SizedBox(height: 38.h),
                  StyledTextField(text: 'Email', hintText: 'email@gmail.com'),
                  SizedBox(height: 24.h),
                  StyledTextField(
                    text: 'Password',
                    hintText: 'email@gmail.com',
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "Forget Password?",
                    textAlign: TextAlign.right,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 14.sp,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      AppButton(
                        text: 'Login',
                        onTap: () {
                          context.router.push(HomeRoute());
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          context.router.push(SelfieVerificationRoute());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            vertical: 11.h,
                            horizontal: 16.w,
                          ),
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
                    ],
                  ),
                  SizedBox(height: 24.h),
                  AccountSwitchText(
                    onTap: () {
                      context.router.push(SignUpRoute());
                    },
                    description: "Don't have an account?",
                    text: 'Get Started',
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
