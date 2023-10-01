import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.verificationCodeAbbBar,
          style: CustomTextStyle.roboto700style20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Align(
              child: Text(
                "We have sent the verification Link to \n Your Email",
                style: CustomTextStyle.roboto700style20.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              child: Text(
                'Please Check to continue \n and login with your new account',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            CustomBtn(
                onPressed: () {
                  customReplacementNavigate(context, '/loginviewwithemail');
                },
                text: AppStrings.go,
                height: 50,
                width: 100,
                backgroundColor: AppColors.primaryColor)
          ],
        ),
      ),
    );
  }
}
