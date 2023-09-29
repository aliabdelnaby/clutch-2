import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
    required this.height,
    required this.width,
    this.shape,
  });

  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: shape,
        ),
        child: Text(
          text,
          style: CustomTextStyle.roboto700style15,
        ),
      ),
    );
  }
}
