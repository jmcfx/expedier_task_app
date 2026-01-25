import 'package:auto_route/auto_route.dart';
import 'package:expedier_task_app/shared/custom_padding.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserAccountTypePage extends StatefulWidget {
  const UserAccountTypePage({super.key});

  @override
  State<UserAccountTypePage> createState() => _UserAccountTypePageState();
}

class _UserAccountTypePageState extends State<UserAccountTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(child: Column(children: [])),
    );
  }
}
