import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomForgotPassWordAndCreateAccountText extends StatelessWidget {
  const CustomForgotPassWordAndCreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              customNavigate(context, '/forgotpasswordview');
            },
            child: Text(
              AppStrings.forgotPassword,
              style: CustomTextStyle.roboto200style13,
            ),
          ),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, '/signupview');
            },
            child: Text(
              AppStrings.createAnAccount,
              style: CustomTextStyle.roboto400style15login,
            ),
          ),
        ],
      ),
    );
  }
}
