
import 'package:clutch/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
