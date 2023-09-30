import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TermsAndConditionBody extends StatelessWidget {
  const TermsAndConditionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 15),
            Text(
              AppStrings.termsAndCondition,
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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to Clutch, a car services app provided by Crixels.',
            ),
            SizedBox(height: 8.0),
            Text(
              'By using the Clutch app, you agree to the following terms and conditions:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. You must be at least 18 years old to use the Clutch app.',
            ),
            Text(
              '2. You must provide accurate and complete information when creating a Clutch account.',
            ),
            Text(
              '3. You must keep your Clutch account information up to date.',
            ),
            Text(
              '4. You may not share your Clutch account with anyone else.',
            ),
            Text(
              '5. You may not use the Clutch app for any illegal or unauthorized purposes.',
            ),
            Text(
              '6. You must comply with all applicable laws and regulations when using the Clutch app.',
            ),
            Text(
              '7. Clutch reserves the right to suspend or terminate your Clutch account at any time, for any reason, without notice.',
            ),
            SizedBox(height: 8.0),
            Text(
              'Clutch is not responsible for any damages or losses caused by your use of the Clutch app.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Clutch may collect personal information about you, such as your name, email address, and phone number. Clutch uses this information to provide you with services and to improve the Clutch app.',
            ),
            Text(
              'Clutch may share your personal information with third parties, such as mechanics and car parts suppliers. Clutch will only share your personal information with third parties who have agreed to comply with Clutch\'s privacy policy.',
            ),
            Text(
              'Clutch may use cookies and other tracking technologies to collect information about your use of the Clutch app. Clutch uses this information to improve the Clutch app and to provide you with relevant advertising.',
            ),
            Text(
              'You may opt out of receiving targeted advertising by disabling cookies in your web browser.',
            ),
            Text(
              'Clutch may change these terms and conditions at any time. By continuing to use the Clutch app after any changes are made, you agree to the new terms and conditions.',
            ),
            SizedBox(height: 8.0),
            Text(
              'Disclaimer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'When you book a mechanic or purchase a car part through the Clutch app, you do so at your own risk. Clutch is not liable for any damages or losses caused by the services provided by mechanics or the quality of car parts purchased. Clutch is only responsible for providing accurate information about mechanics and car parts, and for facilitating transactions between users and mechanics and car parts suppliers.',
            ),
            SizedBox(height: 8.0),
            Text(
              'If you have any questions about these terms and conditions, please contact Clutch at help@crixels.xyz.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
