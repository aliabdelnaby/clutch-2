
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';

class CustomlogoBar extends StatelessWidget {
  const CustomlogoBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 52,
        height: 56,
        child: SvgPicture.asset(
          Assets.assetsImagesLogoappbar,
        ),
      ),
    );
  }
}
