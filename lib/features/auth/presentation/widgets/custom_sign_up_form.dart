import 'package:clutch/core/functions/navigation.dart';
import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/widgets/custom_btn.dart';
import 'package:clutch/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:clutch/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:clutch/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:clutch/features/auth/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/custom_toast.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast("Account Created Successfully");
          customNavigate(context, '/verificationCodePage');
        } else if (state is SignUpFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupForm,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: AppStrings.name,
                onChanged: (name) {
                  authCubit.name = name;
                },
              ),
              CustomTextFormField(
                hintText: AppStrings.email,
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              CustomTextFormField(
                hintText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
                suffixIcon: IconButton(
                  color: AppColors.primaryColor,
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                ),
                obscureText: authCubit.obscurePasswordTextValue,
              ),
              CustomTextFormField(
                hintText: AppStrings.confirmPassword,
                onChanged: (confirmPassword) {
                  authCubit.confirmPassword = confirmPassword;
                },
                suffixIcon: IconButton(
                  color: AppColors.primaryColor,
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                ),
                obscureText: authCubit.obscurePasswordTextValue,
              ),
              CustomTextFormField(
                  hintText: AppStrings.mobilePhone,
                  onChanged: (mobilePhone) {
                    authCubit.mobilePhone = mobilePhone;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
              const TermsAbdConditionWidget(),
              const SizedBox(height: 20),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      onPressed: () {
                        if (authCubit.termsAndConditionCheckBoxValue == true) {
                          if (authCubit.signupForm.currentState!.validate()) {
                            authCubit.signUpWithEmailAndPassword();
                          }
                        }
                      },
                      backgroundColor: AppColors.primaryColor,
                      text: AppStrings.signUp,
                      height: 45,
                      width: double.infinity,
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
              const SizedBox(height: 15),
            ],
          ),
        );
      },
    );
  }
}
