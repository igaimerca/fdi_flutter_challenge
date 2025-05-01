import 'package:fdi_challenge/shared/themes/text_styles.dart';
import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class OutlinedAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OutlinedAppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: const BorderSide(color: AppColors.black),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: AppTextStyles.robotoSemiBoldSmallBlack,
        ),
      ),
    );
  }
}
