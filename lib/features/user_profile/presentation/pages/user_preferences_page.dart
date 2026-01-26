import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/shared/app_button.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';

import 'package:expedier_task_app/shared/pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UserPreferencesPage extends StatefulWidget {
  const UserPreferencesPage({super.key});

  @override
  State<UserPreferencesPage> createState() => _UserPreferencesPageState();
}

class _UserPreferencesPageState extends State<UserPreferencesPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          spacing: 16.h,
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
                      PreferenceChip(horizontal: 51.w, label: '💰 Savings'),
                      Flexible(
                        child: PreferenceChip(
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
                        label: '📚 Financial Literacy',
                        horizontal: 34.w,
                      ),
                      Flexible(
                        child: PreferenceChip(
                          label: "💸 Top up",
                          horizontal: 30.w,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PreferenceChip(horizontal: 45.w, label: '💴 Credits'),
                      PreferenceChip(horizontal: 31.w, label: '🤝 Investing'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: PreferenceChip(
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
                        horizontal: 30.w,
                        label: '🔎 Balance Monitoring',
                      ),
                      Flexible(
                        child: PreferenceChip(
                          horizontal: 24.w,
                          label: '🔒 Security',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PreferenceChip(horizontal: 37.w, label: '🔐 Safety'),
                      Flexible(
                        child: PreferenceChip(
                          horizontal: 30.w,
                          label: '💳 Card Management',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.h),
                  AppButton(text: "Get Started"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreferenceChip extends StatelessWidget {
  const PreferenceChip({
    super.key,
    required this.label,
    required this.horizontal,
  });

  final String label;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        border: BoxBorder.all(
          width: 0.5.r,
          color: theme.colorScheme.primaryContainer,
        ),
        borderRadius: BorderRadius.circular(40).r,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: horizontal),
        child: Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(fontSize: 12.sp),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
