import 'package:fdi_challenge/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:fdi_challenge/shared/widgets/app_logo.dart';
import 'package:fdi_challenge/shared/widgets/primary_button.dart';
import 'package:fdi_challenge/shared/widgets/outlined_button.dart';
import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

import 'package:get/get.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final PageController _pageController = PageController();
  Timer? _autoSlideTimer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _autoSlideTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      int nextIndex = (_currentIndex + 1) % slides.length;
      _pageController.animateToPage(
        nextIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentIndex = nextIndex;
      });
    });
  }

  @override
  void dispose() {
    _autoSlideTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  final List<Map<String, String>> slides = [
    {
      'title': 'Easy Online Payment',
      'subtitle':
          'Make your payment experience more better today. No additional admin fee',
    },
    {
      'title': 'Easy Online Payment',
      'subtitle':
          'Make your payment experience more better today. No additional admin fee',
    },
    {
      'title': 'Easy Online Payment',
      'subtitle':
          'Make your payment experience more better today. No additional admin fee',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.brandBackground,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(height: 16),
            const LogoWidget(),
            const SizedBox(height: 24),
            Image.asset(
              'assets/images/welcome-illustration.png',
              height: screenHeight * 0.35,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                color: AppColors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(slides.length, (index) {
                        final isActive = index == _currentIndex;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 6.3.sp,
                          height: 6.3.sp,
                          decoration: BoxDecoration(
                            color:
                                isActive
                                    ? AppColors.brandBackground
                                    : Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(2),
                            border:
                                isActive
                                    ? Border.all(
                                      color: AppColors.black,
                                      width: 2,
                                    )
                                    : null,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      height: 150,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: slides.length,
                        onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                slides[index]['title']!,
                                style: AppTextStyles.heading,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  slides[index]['subtitle']!,
                                  style: AppTextStyles.subheading,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    PrimaryButton(
                      text: 'Login',
                      onPressed: () {
                        Get.offAllNamed(AppRoutes.home);
                        // TODO: Implement login

                      },
                    ),
                    const SizedBox(height: 12),
                    OutlinedAppButton(
                      text: 'Sign Up',
                      onPressed: () {
                        Get.offAllNamed(AppRoutes.home);
                        // TODO: Implement sign up
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
