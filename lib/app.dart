import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes/app_pages.dart';
import 'shared/themes/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Pay - FDI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.black,
        textTheme: GoogleFonts.robotoTextTheme().copyWith(
          bodyMedium: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
          titleTextStyle: AppTextStyles.heading,
          iconTheme: const IconThemeData(color: AppColors.black),
        ),
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
