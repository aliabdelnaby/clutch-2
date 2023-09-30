import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom_forgot_and_create_account_text.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_title_login_view.dart';

class LoginViewWithEmail extends StatelessWidget {
  const LoginViewWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 35),
            Text(
              AppStrings.logInAppBar,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 66),
            child: Column(
              children: [
                const CustomTitleLoginView(),
                const SizedBox(height: 70),
                const CustomTextFormField(
                  hintText: AppStrings.email,
                ),
                CustomTextFormField(
                  hintText: AppStrings.password,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Image.asset(
                      Assets.assetsImagesHide,
                      height: 5,
                      width: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                CustomBtn(
                  
                  onPressed: () {},
                  backgroundColor:  AppColors.primaryColor,
                  text: AppStrings.login,
                  height: 45,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const CustomForgotPassWordAndCreateAccountText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
