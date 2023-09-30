import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class SignUpGoogle extends StatefulWidget {
  const SignUpGoogle({
    super.key,
  });

  @override
  State<SignUpGoogle> createState() => _SignUpGoogleState();
}

class _SignUpGoogleState extends State<SignUpGoogle> {
  var isHover = false;

  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return;
    }
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    customReplacementNavigate(context, "/homepage");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            signInWithGoogle();
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
              foregroundColor:
                  isHover ? Colors.white : const Color(0xfff0f0f0)),
          child: SizedBox(
            height: 50,
            width: 280,
            child: Row(
              children: [
                Image.asset(
                  Assets.assetsImagesGooogle,
                ),
                const SizedBox(width: 50),
                Text(
                  AppStrings.continueWithGoogle,
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
