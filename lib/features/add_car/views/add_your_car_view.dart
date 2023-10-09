import 'package:clutch/features/add_car/widgets/dropdown_search_widget.dart';
import 'package:clutch/features/add_car/widgets/lists/all_models_list.dart';
import 'package:clutch/features/add_car/widgets/lists/brand_name_list.dart';
import 'package:clutch/features/add_car/widgets/lists/trim_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../widgets/custom_text_form_field.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 83)),
            const SliverToBoxAdapter(
                child: CustomTextFormField(hintText: AppStrings.year)),
            SliverToBoxAdapter(
              child: DropDownSearchWidget(
                listItem: branNameList,
                hintText: AppStrings.brandName,
                selectedItem: AppStrings.brandName,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: DropDownSearchWidget(
                listItem: allModelsList,
                hintText: AppStrings.allModels,
                selectedItem: AppStrings.allModels,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: DropDownSearchWidget(
                listItem: trimList,
                hintText: AppStrings.trim,
                selectedItem: AppStrings.trim,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            const SliverToBoxAdapter(
                child: CustomTextFormField(hintText: AppStrings.kilometeres)),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: CustomBtn(
                onPressed: () {
                  customNavigate(context, '/lastMaintenanceView');
                },
                text: AppStrings.go,
                height: 45,
                width: 84,
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
