import 'package:auto_route/auto_route.dart';
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
          ],
        ),
      ),
    );
  }
}
