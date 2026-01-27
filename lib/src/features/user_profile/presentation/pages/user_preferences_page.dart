import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/core/enums/user_profile_preference_type.dart';
import 'package:expedier_task_app/src/core/extensions/user_profile_preference_type_x.dart';

import 'package:expedier_task_app/src/features/user_profile/presentation/widgets/preference_chip.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';
import 'package:expedier_task_app/src/shared/custom_padding.dart';
import 'package:expedier_task_app/src/shared/pop.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UserPreferencesPage extends HookWidget {
  const UserPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = useState(UserProfilePreferenceType.none);
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          spacing: 17.h,
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 61.w,
              children: [
                Pop(),
                Text("Expédier use", style: theme.textTheme.headlineMedium),
              ],
            ),

            Text(
              "What do you want to use\nExpédier For?",
              style: theme.textTheme.headlineMedium,
            ),

            Text(
              'We need to know this for correct regulating your date. And also, we are really interested!',
              style: theme.textTheme.bodySmall,
            ),
            Text("Everyday Banking", style: theme.textTheme.bodySmall),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: .stretch,
                spacing: 13.h,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PreferenceChip(
                        onTap: () => selected.value = selected.value.isSavings
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.savings,
                        isSelected: selected.value.isSavings,
                        horizontal: 51.w,
                        label: '💰 Savings',
                      ),
                      Flexible(
                        child: PreferenceChip(
                          onTap: () =>
                              selected.value = selected.value.isCashback
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.cashback,
                          isSelected: selected.value.isCashback,
                          label: '🤑 Cashback',
                          horizontal: 32.w,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 16.w,
                    children: [
                      Flexible(
                        child: PreferenceChip(
                          onTap: () =>
                              selected.value = selected.value.isMultipleTransfer
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.multipleTransfer,
                          isSelected: selected.value.isMultipleTransfer,
                          label: '🌍 Multiple Transfers',
                          horizontal: 37.w,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PreferenceChip(
                        onTap: () =>
                            selected.value = selected.value.isFinancialLiteracy
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.financialLiteracy,
                        isSelected: selected.value.isFinancialLiteracy,
                        label: '📚 Financial Literacy',
                        horizontal: 34.w,
                      ),
                      Flexible(
                        child: PreferenceChip(
                          isSelected: selected.value.isTopUp,
                          onTap: () => selected.value = selected.value.isTopUp
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.topUp,
                          label: "💸 Top up",
                          horizontal: 30.w,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PreferenceChip(
                        isSelected: selected.value.isCredits,
                        onTap: () => selected.value = selected.value.isCredits
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.credits,
                        label: '💴 Credits',
                        horizontal: 45.w,
                      ),
                      PreferenceChip(
                        isSelected: selected.value.isInvesting,
                        onTap: () => selected.value = selected.value.isInvesting
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.investing,
                        label: '🤝 Investing',

                        horizontal: 32.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: PreferenceChip(
                          isSelected: selected.value.isTrackIncome,
                          onTap: () =>
                              selected.value = selected.value.isTrackIncome
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.trackIncome,
                          label: '📈 Track your outcomes',
                          horizontal: 48.w,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PreferenceChip(
                        isSelected: selected.value.isBalanceMonitoring,
                        onTap: () =>
                            selected.value = selected.value.isBalanceMonitoring
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.balanceMonitoring,
                        label: '🔎 Balance Monitoring',
                        horizontal: 30.w,
                      ),
                      Flexible(
                        child: PreferenceChip(
                          isSelected: selected.value.isSecurity,
                          onTap: () =>
                              selected.value = selected.value.isSecurity
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.security,
                          horizontal: 26.w,
                          label: '🔒 Security',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PreferenceChip(
                        isSelected: selected.value.isSafety,
                        onTap: () => selected.value = selected.value.isSafety
                            ? UserProfilePreferenceType.none
                            : UserProfilePreferenceType.safety,
                        label: '🔐 Safety',
                        horizontal: 37.w,
                      ),
                      Flexible(
                        child: PreferenceChip(
                          isSelected: selected.value.isCardManagement,
                          onTap: () =>
                              selected.value = selected.value.isCardManagement
                              ? UserProfilePreferenceType.none
                              : UserProfilePreferenceType.cardManagement,
                          horizontal: 28.w,
                          label: '💳 Card Management',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 29.h),
                  AppButton(onTap: () {}, text: "Get Started"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
