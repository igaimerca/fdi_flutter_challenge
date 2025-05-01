import 'package:fdi_challenge/shared/widgets/home_bottom_nav.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: AppColors.white,
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
          child: Row(
            children: [
              LogoWidget(),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here we are!',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
