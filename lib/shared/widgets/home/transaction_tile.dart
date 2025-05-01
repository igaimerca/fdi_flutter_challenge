import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final String iconPath;

  const TransactionTile({
    super.key,
    required this.name,
    required this.date,
    required this.amount,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFE0F7F5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(iconPath, width: 24, height: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextStyles.subheading.copyWith(color: const Color(0xFF595F67), fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(date, style: AppTextStyles.subheading.copyWith(fontSize: 11.sp)),
              ],
            ),
          ),
          Text(amount, style: AppTextStyles.heading.copyWith(fontSize: 12.6.sp)),
        ],
      ),
    );
  }
}
