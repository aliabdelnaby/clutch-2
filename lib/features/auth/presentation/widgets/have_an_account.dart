import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          AppStrings.alreadyHaveAnAccount,
          style: CustomTextStyle.robotow400style15red,
        ),
      ),
    );
  }
}
