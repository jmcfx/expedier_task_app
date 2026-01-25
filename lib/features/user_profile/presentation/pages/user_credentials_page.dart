import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/features/auth/presentation/widgets/styled_text_field.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';
import 'package:expedier_task_app/shared/pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UserCredentialsPage extends StatelessWidget {
  const UserCredentialsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  softWrap: true,
                ),
              ],
            ),
            SizedBox(height: 44.h),
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
                          decoration: InputDecoration(hintText: "First Name"),
                        ),
                      ),
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "Last Name"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
