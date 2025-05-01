import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fdi_challenge/routes/app_routes.dart';
import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:fdi_challenge/shared/widgets/primary_button.dart';

class TransferReceiptView extends StatelessWidget {
  const TransferReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brandBackground,
      appBar: AppBar(
        backgroundColor: AppColors.brandBackground,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: true,
        title: Text(
          'Transfer Receipt',
          style: AppTextStyles.heading.copyWith(fontSize: 18.9.sp),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(18),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/success.png',
                      height: 120.sp,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    Text('Transfer Success', style: AppTextStyles.heading),
                    const SizedBox(height: 8),
                    Text(
                      'Your money has been successfully sent to Nayantara V',
                      style: AppTextStyles.subheading.copyWith(fontSize: 11.sp),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    Text('Total Transfer', style: AppTextStyles.subheading),
                    const SizedBox(height: 4),
                    Text(
                      '\$132.00',
                      style: AppTextStyles.heading.copyWith(fontSize: 22.05.sp),
                    ),
                    const SizedBox(height: 16),

                    // Dashed line
                    Row(
                      children: List.generate(
                        40,
                        (index) => Expanded(
                          child: Container(
                            height: 1,
                            color:
                                index.isEven
                                    ? AppColors.black
                                    : Colors.transparent,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Recipient', style: AppTextStyles.subheading),
                    ),
                    const SizedBox(height: 18),

                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/profile.png',
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nayantara V',
                                  style: AppTextStyles.heading.copyWith(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '8050530XXX',
                                      style: AppTextStyles.subheading.copyWith(
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '•',
                                          style: AppTextStyles.subheading
                                              .copyWith(fontSize: 11.sp),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          '3:02 PM',
                                          style: AppTextStyles.subheading
                                              .copyWith(fontSize: 11.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    PrimaryButton(
                      text: 'Done',
                      onPressed: () => Get.offAllNamed(AppRoutes.home),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.sendMoney),
                      child: Text(
                        'Transfer more money',
                        style: AppTextStyles.subheading.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              // Left Arc
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.39,
                child: Container(
                  width: 20.sp,
                  height: 20.sp,
                  decoration: const BoxDecoration(
                    color: AppColors.brandBackground,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // Right Arc
              Positioned(
                right: 0,
                top: MediaQuery.of(context).size.height * 0.39,
                child: Container(
                  width: 20.sp,
                  height: 20.sp,
                  decoration: const BoxDecoration(
                    color: AppColors.brandBackground,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
