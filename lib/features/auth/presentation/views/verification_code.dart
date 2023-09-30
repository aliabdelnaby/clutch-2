import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
            const SizedBox(height: 50),
            const Align(
              child: Text(
                "We have sent the verification code to \n Your Mobile Number",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '+2 1008888976',
              style: CustomTextStyle.roboto700style20.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 30),
            const CustomPinCodeFields(),
            const SizedBox(height: 30),
            CustomBtn(
              backgroundColor: AppColors.primaryColor,
              onPressed: () {
                customNavigate(context, '/addYouCarView');
              },
              text: AppStrings.submit,
              height: 48,
              width: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 7),
            SizedBox(
              height: 49,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.resendCode,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPinCodeFields extends StatelessWidget {
  const CustomPinCodeFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      appContext: context,
      length: 4,
      autoFocus: true,
      obscureText: false,
      cursorColor: AppColors.primaryColor,
      keyboardType: TextInputType.number,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.circle,
        fieldHeight: 56,
        fieldWidth: 56,
        activeColor: Colors.white,
        inactiveColor: AppColors.primaryColor,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedColor: AppColors.primaryColor,
        disabledColor: AppColors.primaryColor,
        selectedFillColor: Colors.white,
        borderWidth: 0.5,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (v) {
        print("Completed");
      },
    );
  }
}
