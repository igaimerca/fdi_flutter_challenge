import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fdi_challenge/modules/home/controllers/home_controller.dart';
import 'package:fdi_challenge/shared/themes/app_colors.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Obx(() {
      final selected = controller.currentIndex.value;

      return Container(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 32),
        decoration: const BoxDecoration(
          color: AppColors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFE5E7EB), width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            final isCenter = index == 2;
            final isActive = selected == index;

            if (isCenter) {
              return GestureDetector(
                onTap: () => controller.changeTab(index),
                child: AnimatedScale(
                  scale: isActive ? 1.1 : 1.0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.qr_code_scanner,
                        color: Colors.white, size: 28),
                  ),
                ),
              );
            }

            final iconData = [
              Icons.home_outlined,
              Icons.receipt_long_outlined,
              null,
              Icons.notifications_none,
              Icons.person_outline,
            ][index]!;

            final filledIconData = [
              Icons.home,
              Icons.receipt_long,
              null,
              Icons.notifications,
              Icons.person,
            ][index]!;

            return Expanded(
              child: GestureDetector(
                onTap: () => controller.changeTab(index),
                behavior: HitTestBehavior.opaque,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.only(top: 4, bottom: 2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isActive ? filledIconData : iconData,
                        color: isActive ? AppColors.black : Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(height: 6),
                      AnimatedOpacity(
                        opacity: isActive ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
