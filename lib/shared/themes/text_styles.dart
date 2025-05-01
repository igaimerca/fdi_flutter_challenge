import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final heading = GoogleFonts.ibmPlexSans(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static final subheading = GoogleFonts.ibmPlexSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final body = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static final bodyMuted = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted1,
  );

  static final label = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final poppinsBold = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
}
