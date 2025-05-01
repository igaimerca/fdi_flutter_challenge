import 'package:fdi_challenge/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Top Up', 'icon': 'assets/icons/topup.png', 'route': null},
      {
        'label': 'Send',
        'icon': 'assets/icons/send.png',
        'route': AppRoutes.sendMoney,
      },
      {'label': 'Withdraw', 'icon': 'assets/icons/withdraw.png', 'route': null},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(3.15.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            items.map((item) {
              return InkWell(
                splashFactory: InkRipple.splashFactory,
                splashColor: Colors.white.withAlpha(50),
                highlightColor: Colors.white.withAlpha(25),
                onTap: () {
                  if (item['route'] != null) {
                    Get.toNamed(item['route']!);
                  }
                },
                child: Column(
                  children: [
                    Image.asset(
                      item['icon']!,
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
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
