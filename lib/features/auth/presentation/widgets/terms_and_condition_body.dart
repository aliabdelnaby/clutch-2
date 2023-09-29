import 'package:clutch/core/utils/app_assets.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TermsAndConditionBody extends StatelessWidget {
  const TermsAndConditionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 15),
            Text(
              AppStrings.termsAndCondition,
              style: CustomTextStyle.robotow600style15,
            ),
            const SizedBox(width: 0),
            SvgPicture.asset(
              Assets.assetsImagesLogoappbar,
              height: 32,
              width: 30,
            ),
          ],
        ),
      ),
      body: ListView(
        children: const [
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
