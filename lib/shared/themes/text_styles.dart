import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static final heading = GoogleFonts.ibmPlexSans(
    fontSize: 25.2.sp,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
    color: AppColors.black,
  );
  static final subheading = GoogleFonts.roboto(
    fontSize: 12.6.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textMuted1,
  );

  static final body = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static final bodyMuted = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted1,
  );

  static final label = GoogleFonts.roboto(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static final robotoSemiBoldSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: 12.6.sp,
    height: 1.5,
    letterSpacing: 0,
    color: Colors.white,
  );

  static final robotoSemiBoldSmallBlack = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: 12.6.sp,
    height: 1.5,
    letterSpacing: 0,
    color: Colors.black,
  );

  static final poppinsBold = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
}
