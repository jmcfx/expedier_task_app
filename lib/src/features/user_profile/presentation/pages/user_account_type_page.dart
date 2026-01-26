import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';
import 'package:expedier_task_app/src/core/enums/account_type.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/account_switch_text.dart';
import 'package:expedier_task_app/src/features/user_profile/presentation/widgets/account_type_content.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';
import 'package:expedier_task_app/src/shared/custom_padding.dart';
import 'package:expedier_task_app/src/shared/outline_container.dart';
import 'package:expedier_task_app/src/shared/pop.dart';

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
                  style: theme.textTheme.headlineMedium,
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
              child: AccountTypeContent(
                tittle: "Personal Account",
                description: "Personal accounts with super perks",
                isAccountTypeSelected: selectedType.value.isPersonal,
              ),
            ),
            SizedBox(height: 16.h),

            ///Business Account..
            OutlineContainer(
              isSelected: selectedType.value.isBusiness,
              onTap: () => selectedType.value = selectedType.value.isBusiness
                  ? AccountType.none
                  : AccountType.business,
              child: AccountTypeContent(
                tittle: "Business Account",
                description: "For Businesses powered by extra perks",
                isAccountTypeSelected: selectedType.value.isBusiness,
              ),
            ),
            SizedBox(height: 16.h),

            /// Internal User...
            OutlineContainer(
              isSelected: selectedType.value.isInternal,
              onTap: () => selectedType.value = selectedType.value.isInternal
                  ? AccountType.none
                  : AccountType.internal,
              child: AccountTypeContent(
                tittle: "Internal Users",
                description: "Internal Users",
                isAccountTypeSelected: selectedType.value.isInternal,
              ),
            ),

            SizedBox(height: 16.h),

            /// New Immigrant / Student Account ..
            OutlineContainer(
              isSelected: selectedType.value.isNewImmigrantOrStudent,
              onTap: () => selectedType.value =
                  selectedType.value.isNewImmigrantOrStudent
                  ? AccountType.none
                  : AccountType.newImmigrantOrStudent,
              child: AccountTypeContent(
                tittle: "New Immigrant / Student Account",
                description: "Great account for recent immigrations",
                isAccountTypeSelected:
                    selectedType.value.isNewImmigrantOrStudent,
              ),
            ),

            SizedBox(height: 56.h),

            /// Continue Button
            AppButton(
              onTap: () => context.router.push(UserPreferencesRoute()),
              text: 'Continue',
            ),
            SizedBox(height: 24.h),

            ///switch to sign out ....
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
