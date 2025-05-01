import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fdi_challenge/shared/themes/app_colors.dart';
import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:fdi_challenge/shared/widgets/primary_button.dart';

class SendMoneyView extends StatefulWidget {
  const SendMoneyView({super.key});

  @override
  State<SendMoneyView> createState() => _SendMoneyViewState();
}

class _SendMoneyViewState extends State<SendMoneyView> {
  String amount = '';

  void onKeyTap(String key) {
    setState(() {
      if (key == '⌫') {
        if (amount.isNotEmpty) {
          amount = amount.substring(0, amount.length - 1);
        }
      } else if (key == '.') {
        if (!amount.contains('.')) {
          amount += '.';
        }
      } else {
        amount += key;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0', '⌫'];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.brandBackground,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Send Money',
          style: AppTextStyles.heading.copyWith(fontSize: 18.9.sp),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            color: AppColors.brandBackground,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: const AssetImage(
                    'assets/images/profile.png',
                  ),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 12),
                Text(
                  'Nayantara V',
                  style: AppTextStyles.heading.copyWith(fontSize: 18.9.sp),
                ),
                const SizedBox(height: 4),
                Text(
                  '+91 8050530XXX',
                  style: AppTextStyles.subheading.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            '₹${amount.isEmpty ? '0' : amount}',
            style: AppTextStyles.heading.copyWith(fontSize: 22.05.sp),
          ),
          const SizedBox(height: 16),
          const Divider(thickness: 1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: SingleChildScrollView(
                child: Table(
                  border: const TableBorder(
                    horizontalInside: BorderSide(
                      color: Color(0xFFE5E5E5),
                      width: 1,
                    ),
                    verticalInside: BorderSide(
                      color: Color(0xFFE5E5E5),
                      width: 1,
                    ),
                    top: BorderSide.none,
                    left: BorderSide.none,
                    right: BorderSide.none,
                    bottom: BorderSide.none,
                  ),
                  children: [
                    _buildRow(['1', '2', '3']),
                    _buildRow(['4', '5', '6']),
                    _buildRow(['7', '8', '9']),
                    _buildRow(['.', '0', '⌫']),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: PrimaryButton(text: 'Send', onPressed: () {}),
          ),
        ],
      ),
    );
  }

  TableRow _buildRow(List<String> values) {
    return TableRow(
      children:
          values.map((key) {
            return Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => onKeyTap(key),
                splashFactory: InkRipple.splashFactory,
                splashColor: Colors.grey.withAlpha(50),
                highlightColor: Colors.grey.withAlpha(25),
                child: Container(
                  height: 64.h,
                  alignment: Alignment.center,
                  child:
                      key == '⌫'
                          ? const Icon(Icons.backspace_outlined)
                          : Text(
                            key,
                            style: AppTextStyles.heading.copyWith(
                              fontSize: 22.05.sp,
                            ),
                          ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
