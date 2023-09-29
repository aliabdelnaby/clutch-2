import 'package:clutch/core/utils/app_text_style.dart';
import 'package:clutch/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

import 'custom_smooth_page_indicator.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  const OnBoardingBodyWidget({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 312,
                width: 312,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      onBoardingData[index].imagePath,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                onBoardingData[index].title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.roboto700style20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 13),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: onBoardingData[index].subTitleOne,
                      style: CustomTextStyle.robotow400style15red,
                    ),
                    TextSpan(
                      text: onBoardingData[index].subTitleTwo,
                      style: CustomTextStyle.robotow400style15grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
            ],
          );
        },
      ),
    );
  }
}
