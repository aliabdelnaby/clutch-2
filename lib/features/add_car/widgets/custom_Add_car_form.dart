import 'package:clutch/core/functions/custom_toast.dart';
import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/widgets/custom_btn.dart';
import 'package:clutch/features/add_car/presentation/add_car_cubit/cubit/add_car_cubit.dart';
import 'package:clutch/features/add_car/presentation/add_car_cubit/cubit/add_car_state.dart';
import 'package:clutch/features/add_car/widgets/custom_text_form_field.dart';
import 'package:clutch/features/add_car/widgets/dropdown_search_widget.dart';
import 'package:clutch/features/add_car/widgets/lists/all_models_list.dart';
import 'package:clutch/features/add_car/widgets/lists/brand_name_list.dart';
import 'package:clutch/features/add_car/widgets/lists/trim_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAddCarForm extends StatelessWidget {
  const CustomAddCarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCarCubit, AddCarState>(
      listener: (context, state) {
        if (state is AddCarSuccessgState) {
          showToast("Successfully, Added your Car info");
          customNavigate(context, '/lastMaintenanceView');
        } else if (state is AddCarFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AddCarCubit addCarCubit = BlocProvider.of<AddCarCubit>(context);
        return Form(
          key: addCarCubit.addCarForm,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: AppStrings.year,
                onChanged: (year) {
                  addCarCubit.year = year;
                },
              ),
              DropDownSearchWidget(
                listItem: branNameList,
                hintText: AppStrings.brandName,
                selectedItem: AppStrings.brandName,
                onChanged: (brandName) {
                  addCarCubit.brandName = brandName;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field is required";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              DropDownSearchWidget(
                listItem: allModelsList,
                hintText: AppStrings.allModels,
                selectedItem: AppStrings.allModels,
                onChanged: (allModels) {
                  addCarCubit.allModels = allModels;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field is required";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              DropDownSearchWidget(
                listItem: trimList,
                hintText: AppStrings.trim,
                selectedItem: AppStrings.trim,
                onChanged: (trim) {
                  addCarCubit.trim = trim;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field is required";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                hintText: AppStrings.kilometeres,
                onChanged: (kilometeres) {
                  addCarCubit.kilometers = kilometeres;
                },
              ),
              const SizedBox(height: 10),
              state is AddCarLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      onPressed: () {
                        // customNavigate(context, '/lastMaintenanceView');
                        if (addCarCubit.addCarForm.currentState!.validate()) {
                          // addCarCubit.addUserProfile();
                        }
                      },
                      text: AppStrings.go,
                      height: 45,
                      width: 84,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
            ],
          ),
        );
      },
    );
  }
}
