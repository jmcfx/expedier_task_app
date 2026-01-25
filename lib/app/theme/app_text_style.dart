import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static final TextStyle mediumText20 = GoogleFonts.rubik(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    height: 1.1.r,
  );
  static final TextStyle regularText16 = GoogleFonts.rubik(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.1.r,
  );

  static final TextStyle semiBold14 = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    height: 1.r,
  );
  static final TextStyle light = GoogleFonts.rubik(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    height: 1.r,
  );
}
