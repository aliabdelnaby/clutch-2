import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_assets.dart';
import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({
    super.key,
  });

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            customNavigate(context, '/loginviewwithemail');
          },
          onHover: (value) {
            setState(() {
              isHover = true;
            });
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: const Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            foregroundColor: isHover ? Colors.white : const Color(0xfff0f0f0),
          ),
          child: SizedBox(
            height: 50,
            width: 280,
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.assetsImagesEmail,
                ),
                const SizedBox(width: 50),
                Text(
                  AppStrings.continueWithEmail,
                  style: CustomTextStyle.roboto500style14.copyWith(
                    color: AppColors.continueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
