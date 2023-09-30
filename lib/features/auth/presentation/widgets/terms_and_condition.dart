import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAbdConditionWidget extends StatelessWidget {
  const TermsAbdConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        GestureDetector(
          onTap: () {
            customNavigate(context, '/termsAndConditionBody');
          },
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: CustomTextStyle.robotow400style12,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyle.robotow400style12.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}


