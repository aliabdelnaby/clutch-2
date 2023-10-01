import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_style.dart';

class SignUpFacebook extends StatefulWidget {
  const SignUpFacebook({
    super.key,
  });

  @override
  State<SignUpFacebook> createState() => _SignUpFacebookState();
}

class _SignUpFacebookState extends State<SignUpFacebook> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          onHover: (value) {
            setState(() {
              isHover = true;
            });
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            foregroundColor: isHover ? Colors.blue : const Color(0xfff0f0f0),
          ),
          child: SizedBox(
            height: 50,
            width: 280,
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(width: 50),
                Text(
                  AppStrings.continueWithFacebook,
                  style: CustomTextStyle.roboto500style14.copyWith(
                    color: Colors.white,
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
