import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../../data/models/onboarding_model.dart';
import '../views/functions/on_boarding.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currenIndex, required this.controller});
  final int currenIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    currenIndex == onBoardingData.length - 1;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: CustomBtn(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            height: 42,
            width: 166,
            backgroundColor: AppColors.primaryColor,
            text: AppStrings.getStarted,
            color: AppColors.primaryColor,
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceIn,
              );
              onBoardingVisited();
              customReplacementNavigate(context, '/signupoptions');
            },
          ),
        ),
      ],
    );
  }
}
