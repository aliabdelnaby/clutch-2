import '../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
