import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 10),
            Text(
              AppStrings.forgottenPasswordAppBar,
              style: CustomTextStyle.robotow600style15,
            ),
            const SizedBox(width: 0),
            SvgPicture.asset(
              Assets.assetsImagesLogoappbar,
              height: 32,
              width: 30,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 190),
              child: CustomTextFormField(
                hintText: AppStrings.email,
              ),
            ),
            const SizedBox(height: 28),
            CustomBtn(
              backgroundColor: AppColors.primaryColor,
              onPressed: () {},
              text: AppStrings.resetYourPassword,
              height: 42,
              width: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
