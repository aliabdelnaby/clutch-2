import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/custom_toast.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../auth_cubit/cubit/auth_cubit.dart';
import '../auth_cubit/cubit/auth_state.dart';
import 'custom_text_field.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          // if (FirebaseAuth.instance.currentUser!.emailVerified) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customReplacementNavigate(context, "/addYouCarView")
              : showToast("Please Verify Your Account");
          // }
        } else if (state is LoginFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.loginForm,
          child: Column(
            children: [
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
              const SizedBox(height: 40),
              state is LoginLoadingState
                  ? CircularProgressIndicator(color: AppColors.primaryColor)
                  : CustomBtn(
                      onPressed: () async {
                        if (authCubit.loginForm.currentState!.validate()) {
                          await authCubit.loginWithEmailAndPassword();
                        }
                      },
                      backgroundColor: AppColors.primaryColor,
                      text: AppStrings.login,
                      height: 45,
                      width: double.infinity,
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
