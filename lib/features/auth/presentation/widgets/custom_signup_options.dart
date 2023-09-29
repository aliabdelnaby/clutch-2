import 'package:flutter/material.dart';
import 'signup_email.dart';
import 'signup_facebook.dart';
import 'signup_google.dart';

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
