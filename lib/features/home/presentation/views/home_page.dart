import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 15),
            Text(
              'CLUTCH',
              style: CustomTextStyle.robotow600style15,
            ),
            const SizedBox(width: 0),
            IconButton(
              onPressed: () async {
                GoogleSignIn googleSignIn = GoogleSignIn();
                googleSignIn.disconnect();
                await FirebaseAuth.instance.signOut();
                customReplacementNavigate(context, '/signupoptions');
              },
              icon: const Icon(
                Icons.exit_to_app,
              ),
            )
          ],
        ),
      ),
    );
  }
}
