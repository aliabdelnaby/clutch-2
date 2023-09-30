import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_style.dart';

class AddYouCarView extends StatelessWidget {
  const AddYouCarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 15),
            Text(
              AppStrings.addYourCarAppBar,
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
    );
  }
}
