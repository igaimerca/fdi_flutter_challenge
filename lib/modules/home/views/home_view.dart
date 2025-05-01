import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:fdi_challenge/shared/widgets/home/action_buttons.dart';
import 'package:fdi_challenge/shared/widgets/home/balance_card.dart';
import 'package:fdi_challenge/shared/widgets/home/home_bottom_nav.dart';
import 'package:fdi_challenge/shared/widgets/home/promo_banner.dart';
import 'package:fdi_challenge/shared/widgets/home/service_grid.dart';
import 'package:fdi_challenge/shared/widgets/home/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fdi_challenge/modules/home/controllers/home_controller.dart';
import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:fdi_challenge/shared/widgets/app_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    final List<Widget> screens = [
      const _MainHomeContent(),
      const Center(child: Text('Bills')),
      const Center(child: Text('Scan')),
      const Center(child: Text('Notifications')),
      const Center(child: Text('Profile')),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: const HomeBottomNav(),
      body: Obx(() => SafeArea(child: screens[controller.currentIndex.value])),
    );
  }
}

class _MainHomeContent extends StatelessWidget {
  const _MainHomeContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: [LogoWidget()]),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                BalanceCard(),
                SizedBox(height: 16),
                ActionButtons(),
                SizedBox(height: 16),
                ServiceGrid(),
                SizedBox(height: 16),
                PromoBanner(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Transaction', style: AppTextStyles.heading.copyWith(fontSize: 18.9.sp, fontWeight: FontWeight.w600)),
                    Text('See All', style: AppTextStyles.subheading.copyWith(color: AppColors.black, fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 12),
                const TransactionTile(
                  name: 'Raj K',
                  date: 'February 24,2022',
                  amount: '₹240.00',
                  iconPath: 'assets/icons/hat.png',
                ),
                const TransactionTile(
                  name: 'Samantha',
                  date: 'February 23,2022',
                  amount: '₹1,000.00',
                  iconPath: 'assets/icons/hat.png',
                ),
                const TransactionTile(
                  name: 'Kevin',
                  date: 'February 22,2022',
                  amount: '₹875.00',
                  iconPath: 'assets/icons/hat.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
