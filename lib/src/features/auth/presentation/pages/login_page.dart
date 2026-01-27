import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';

import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/styled_text_field.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/verfication_container.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPasswordVisible = useState(true);
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
                  SizedBox(height: 24.h),
                  StyledTextField(
                    obscureText: isPasswordVisible.value,
                    onTap: () =>
                        isPasswordVisible.value = !isPasswordVisible.value,
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
                      AppButton(text: 'Login', onTap: () {}),
                      VerificationContainer(
                        onTap: () {
                          context.router.push(SelfieVerificationRoute());
                        },
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
