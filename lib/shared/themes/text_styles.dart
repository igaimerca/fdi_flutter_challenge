import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final heading = GoogleFonts.ibmPlexSans(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static final subheading = GoogleFonts.ibmPlexSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static final body = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final bodyMuted = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF7F8790),
  );

  static final label = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
}
