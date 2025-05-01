import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Top Up', 'icon': 'assets/icons/topup.png'},
      {'label': 'Send', 'icon': 'assets/icons/send.png'},
      {'label': 'Withdraw', 'icon': 'assets/icons/withdraw.png'},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(3.15.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
            return GestureDetector(
            onTap: () {
              print('${item['label']} tapped');
            },
            child: Column(
              children: [
              Image.asset(item['icon']!, width: 24, height: 24, color: Colors.white),
              const SizedBox(height: 8),
              Text(
                item['label']!,
                style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 9.4.sp,
                fontWeight: FontWeight.w500,
                ),
              ),
              ],
            ),
            );
        }).toList(),
      ),
    );
  }
}
