import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/src/app/router/app_router.gr.dart';
import 'package:expedier_task_app/src/core/constants/app_icons.dart';
import 'package:expedier_task_app/src/features/auth/presentation/widgets/sub_tittle.dart';
import 'package:expedier_task_app/src/shared/app_button.dart';
import 'package:expedier_task_app/src/shared/custom_padding.dart';
import 'package:expedier_task_app/src/shared/pop.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class EmailConfirmationPage extends StatefulWidget {
  const EmailConfirmationPage({super.key});

  @override
  State<EmailConfirmationPage> createState() => _EmailConfirmationPageState();
}

class _EmailConfirmationPageState extends State<EmailConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Pop(),
            SizedBox(height: 25.h),
            SvgPicture.asset(AppIcons.folder, width: 375.w, height: 346.h),
            SizedBox(height: 70.h),
            Text(
              "Confirm Your email",
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            SubTittle(text: "We have just sent an email to ", isPadded: false),
            SubTittle(
              text: "email@gmail.com",
              color: theme.colorScheme.primary,
            ),
            SizedBox(height: 50.h),
            AppButton(
              text: "Continue",
              onTap: () {
                context.router.push(OtpRoute());
              },
            ),
            SizedBox(height: 24.h),
            Text.rich(
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
              TextSpan(
                children: [
                  TextSpan(
                    text: "i didn't receive ",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  TextSpan(text: "my email"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
