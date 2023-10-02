import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../widgets/custom_forgot_and_create_account_text.dart';
import '../widgets/custom_login_form.dart';
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 44),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 66)),
            SliverToBoxAdapter(child: CustomTitleLoginView()),
            SliverToBoxAdapter(child: SizedBox(height: 70)),
            SliverToBoxAdapter(child: CustomLoginForm()),
            SliverToBoxAdapter(
                child: CustomForgotPassWordAndCreateAccountText()),
          ],
        ),
      ),
    );
  }
}
