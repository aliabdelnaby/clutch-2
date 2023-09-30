import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTitleLoginView extends StatelessWidget {
  const CustomTitleLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        AppStrings.continueWithEmail,
        style: CustomTextStyle.roboto700style20,
      ),
    );
  }
}
