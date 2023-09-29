import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          customReplacementNavigate(context, '/loginviewwithemail');
        },
        child: Text(
          AppStrings.alreadyHaveAnAccount,
          style: CustomTextStyle.robotow400style15red,
        ),
      ),
    );
  }
}
