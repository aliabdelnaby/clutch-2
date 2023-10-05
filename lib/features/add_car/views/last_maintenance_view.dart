import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/widgets/custom_btn.dart';
import 'package:clutch/features/add_car/widgets/date_text_field.dart';
import 'package:clutch/features/add_car/widgets/dropdown_search_widget.dart';
import 'package:clutch/features/add_car/widgets/lists/what_did_u_do_list.dart';

import '../../../core/functions/navigation.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LastMaintenanceView extends StatelessWidget {
  const LastMaintenanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 40),
            Text(
              AppStrings.lastMaintenanceAppBar,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 83)),
            const SliverToBoxAdapter(child: DatePickerTextField()),
            SliverToBoxAdapter(
              child: DropDownSearchWidget(
                listItem: lastMaintenanceOptions,
                hintText: AppStrings.whatDidYouDo,
                selectedItem: AppStrings.whatDidYouDo,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
                child: CustomBtn(
              onPressed: () {},
              text: AppStrings.confirm,
              height: 42,
              width: 217,
              backgroundColor: AppColors.primaryColor,
            )),
          ],
        ),
      ),
    );
  }
}
