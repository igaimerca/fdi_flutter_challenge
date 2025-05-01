import 'package:flutter/material.dart';
import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Samantha', style: AppTextStyles.heading.copyWith(fontSize: 15.75.sp)),
                  const SizedBox(height: 4),
                  Text('Your available balance', style: AppTextStyles.subheading),
                ],
              ),
            ),
            Text(
              '₹4,590.00',
              style: AppTextStyles.heading.copyWith(fontSize: 18.9.sp),
            ),
          ],
        ),
      ],
    );
  }
}
