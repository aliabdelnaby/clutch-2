import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/custom_signup_options.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              const SizedBox(height: 49),
              Center(
                child: SvgPicture.asset(
                  Assets.assetsImagesLogoappbar,
                  height: 200,
                  width: 200,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                AppStrings.loginOrCreateAnAccount,
                style: CustomTextStyle.roboto700style20,
              ),
              const SizedBox(height: 10),
              Text(
                AppStrings.loginBody,
                style: CustomTextStyle.roboto400style11,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),
              const CustomSignUpOptions(),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(width: 101),
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
    );
  }
}
