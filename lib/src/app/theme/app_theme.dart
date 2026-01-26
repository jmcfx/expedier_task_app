import 'package:expedier_task_app/src/app/theme/app_colors.dart';
import 'package:expedier_task_app/src/app/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  ///light Mode Theming ......
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: _lightTextTheme,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.primaryColorF6,
      contentPadding: EdgeInsets.symmetric(vertical: 17.h).copyWith(left: 15.w),
      hintStyle: TextStyle(
        color: AppColors.textColor42.withValues(alpha: 0.5),
        fontSize: 14.sp,
      ),
      enabledBorder: _outLineBorderStyle(),
      focusedBorder: _outLineBorderStyle().copyWith(
        borderSide: BorderSide(color: AppColors.primaryColorF4, width: 1.5.w),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColorF4,
      primaryContainer: AppColors.primaryColorF4,
      primary: AppColors.primaryColorC2,
      onPrimary: AppColors.primaryColor3C,
      onPrimaryContainer: AppColors.primaryColorCA,
      secondary: AppColors.secondaryColorDE,
      onSecondaryContainer: AppColors.secondaryColorF1,
      onSecondary: AppColors.secondaryColorE4,
      secondaryContainer: AppColors.primaryColorF6
    ),
  );

  ///Light Text Theme.....
  static final TextTheme _lightTextTheme = TextTheme(
    titleMedium: AppTextStyle.mediumText20.copyWith(
      color: AppColors.textColor12,
    ),
    titleSmall: AppTextStyle.regularText16.copyWith(
      color: AppColors.textColor42,
    ),
    displayMedium: AppTextStyle.semiBold14,
    bodySmall: AppTextStyle.light.copyWith(color: AppColors.textColor42),
    bodyMedium: AppTextStyle.regularText16.copyWith(
      fontSize: 24.sp,
      color: AppColors.textColor21,
     
    ),
    headlineMedium: AppTextStyle.regularText16.copyWith(
      color: AppColors.primaryColor3C,
       fontSize: 20.sp,
    ),
  );
}

InputBorder _outLineBorderStyle() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primaryColorF4, width: 1.r),
    borderRadius: BorderRadius.all(Radius.circular(15).r),
  );
}
