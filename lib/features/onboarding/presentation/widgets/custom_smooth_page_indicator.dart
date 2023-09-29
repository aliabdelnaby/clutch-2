import 'package:clutch/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      textDirection: TextDirection.ltr,
      effect: SlideEffect(
        activeDotColor: AppColors.primaryColor,
        dotHeight: 12,
        dotWidth: 12,
        dotColor: AppColors.primaryColor,
        paintStyle: PaintingStyle.stroke,
      ),
    );
  }
}
