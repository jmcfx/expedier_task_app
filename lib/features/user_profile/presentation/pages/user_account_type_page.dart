import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/app/router/app_router.gr.dart';
import 'package:expedier_task_app/core/enums/account_type.dart';

import 'package:expedier_task_app/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/shared/app_button.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';
import 'package:expedier_task_app/shared/outline_container.dart';
import 'package:expedier_task_app/shared/pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UserAccountTypePage extends HookWidget {
  const UserAccountTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedType = useState<AccountType>(AccountType.none);
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 25.w,
              children: [
                Pop(),
                Text(
                  "Choose account type",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 56.h),

            /// Personal Account...
            OutlineContainer(
              isSelected: selectedType.value.isPersonal,
              onTap: () => selectedType.value = selectedType.value.isPersonal
                  ? AccountType.none
                  : AccountType.personal,
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "Personal Account ",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Personal accounts with super perks",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            ///Business Account..
            OutlineContainer(
              isSelected: selectedType.value.isBusiness,
              onTap: () => selectedType.value = selectedType.value.isBusiness
                  ? AccountType.none
                  : AccountType.business,
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "Business Account ",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "For Businesses powered by extra perks",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            /// Internal User...
            OutlineContainer(
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "Internal User ",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text("Internal Users", style: theme.textTheme.bodySmall),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            /// New Immigrant / Student Account ..
            OutlineContainer(
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "New Immigrant / Student Account",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Great account for recent immigrations",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 56.h),
            AppButton(text: 'Continue'),
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
    );
  }
}
