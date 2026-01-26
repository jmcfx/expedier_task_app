import 'package:expedier_task_app/src/app/router/app_router.dart';
import 'package:expedier_task_app/src/app/theme/app_theme.dart';
import 'package:expedier_task_app/src/shared/unfocus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpedierTaskApp extends StatelessWidget {
  ExpedierTaskApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: ScreenUtilInit(
          designSize: const Size(375, 851),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Expedier TaskApp ',
              theme: AppTheme.lightTheme,
              routerConfig: _appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}
