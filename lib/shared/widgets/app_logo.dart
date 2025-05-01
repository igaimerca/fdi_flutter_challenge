import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/easypay-logo.png',
          height: 18.9.sp,
          width: 13.4.sp, 
        ),
        const SizedBox(width: 4),
        Text(
          'EasyPay',
          style: AppTextStyles.poppinsBold.copyWith(fontSize: 18.9.sp, height: 1.2),
        ),
      ],
    );
  }
}
