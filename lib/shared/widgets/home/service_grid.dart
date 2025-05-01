import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Internet', 'icon': 'assets/icons/internet.png'},
      {'label': 'Water', 'icon': 'assets/icons/water.png'},
      {'label': 'Electricity', 'icon': 'assets/icons/thunder.png'},
      {'label': 'TV Cable', 'icon': 'assets/icons/tv.png'},
      {'label': 'Vehicle', 'icon': 'assets/icons/car.png'},
      {'label': 'Rent Bill', 'icon': 'assets/icons/house.png'},
      {'label': 'Invest', 'icon': 'assets/icons/invest.png'},
      {'label': 'More', 'icon': 'assets/icons/more.png'},
    ];

    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (_, index) {
          final item = items[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(item['icon']!, width: 16.sp, height: 16.sp,fit: BoxFit.cover,),
              const SizedBox(height: 1),
              Text(
                item['label']!,
                style: GoogleFonts.roboto(
                  fontSize: 9.45.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textMuted1
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
