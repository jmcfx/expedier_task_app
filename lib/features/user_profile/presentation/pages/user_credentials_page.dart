import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/app/router/app_router.gr.dart';
import 'package:expedier_task_app/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/features/auth/presentation/widgets/styled_text_field.dart';
import 'package:expedier_task_app/shared/app_button.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';
import 'package:expedier_task_app/shared/pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UserCredentialsPage extends HookWidget {
  const UserCredentialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPasswordObscure = useState(true);
    final isConfirmPasswordObscure = useState(true);
    final isReferralCodeObscure = useState(true);
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 16.w,
              children: [
                Pop(),
                Text(
                  "Let's begin the journey.",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsetsDirectional.only(top: 22.h),
                child: Column(
                  children: [
                    StyledTextField(
                      text: "Full legal name",
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
                                    hintText: "First Name",
                                  ),
                                ),
                              ),
                              Flexible(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.sp),

                    /// Number ....
                    StyledTextField(
                      text: "Mobile Number",
                      hintText: "Enter Phone Number",
                    ),
                    SizedBox(height: 16.sp),

                    /// Password..
                    StyledTextField(
                      obscureText: isPasswordObscure.value,
                      onTap: () {
                        isPasswordObscure.value = !isPasswordObscure.value;
                      },
                      text: "Password",
                      hintText: "Must be up to six characters ",
                    ),
                    SizedBox(height: 16.sp),

                    /// Confirm Password...
                    StyledTextField(
                      obscureText: isConfirmPasswordObscure.value,
                      onTap: () {
                        isConfirmPasswordObscure.value =
                            !isConfirmPasswordObscure.value;
                      },
                      text: "Confirm Password",
                      hintText: "Re-enter password",
                    ),
                    SizedBox(height: 16.sp),

                    /// Referral....
                    StyledTextField(
                      onTap: () {
                        isReferralCodeObscure.value =
                            !isReferralCodeObscure.value;
                      },
                      obscureText: isReferralCodeObscure.value,
                      text: "Referral code",
                      hintText: "Referral code (optional)",
                    ),
                    SizedBox(height: 52.h),

                    AppButton(
                      onTap: () => context.router.push(UserAccountTypeRoute()),
                      text: "Continue",
                    ),

                    SizedBox(height: 22.h),
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
      ),
    );
  }
}
