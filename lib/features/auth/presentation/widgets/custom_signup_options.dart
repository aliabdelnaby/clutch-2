import 'sign_up_options_buttons/signup_email.dart';
import 'sign_up_options_buttons/signup_google.dart';
import 'package:flutter/material.dart';
import 'sign_up_options_buttons/signup_facebook.dart';

class CustomSignUpOptions extends StatelessWidget {
  const CustomSignUpOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignUpFacebook(),
        SizedBox(height: 16),
        SignUpGoogle(),
        SizedBox(height: 16),
        SignUpEmail(),
      ],
    );
  }
}
