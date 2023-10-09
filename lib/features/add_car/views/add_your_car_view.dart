import 'package:clutch/features/add_car/widgets/custom_Add_car_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class AddYouCarView extends StatelessWidget {
  const AddYouCarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 40),
            Text(
              AppStrings.addYourCarAppBar,
              style: CustomTextStyle.robotow600style15,
            ),
            const SizedBox(width: 0),
            SvgPicture.asset(
              Assets.assetsImagesLogoappbar,
              height: 32,
              width: 30,
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 31),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 83)),
            SliverToBoxAdapter(child: CustomAddCarForm()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
