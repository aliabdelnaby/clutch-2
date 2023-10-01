import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

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
                "We have sent the verification Link to \n Your Email",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Please Check to continue',
              style: CustomTextStyle.roboto700style20.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 200),
            Text(
              'Press log out to re-login with your new account \n or close and open the app to refresh',
              style: CustomTextStyle.roboto700style20.copyWith(fontSize: 16),
            ),
            IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                customReplacementNavigate(context, '/signupoptions');
              },
              icon: const Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
