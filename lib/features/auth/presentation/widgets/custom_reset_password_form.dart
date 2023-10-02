import 'package:clutch/core/functions/custom_toast.dart';
import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/widgets/custom_btn.dart';
import 'package:clutch/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:clutch/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:clutch/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomResetPasswordForm extends StatelessWidget {
  const CustomResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetSuccessState) {
          showToast("A password reset link has been sent to your email");
        } else if (state is ResetFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.resetPasswordForm,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: AppStrings.email,
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              const SizedBox(height: 28),
              CustomBtn(
                backgroundColor: AppColors.primaryColor,
                onPressed: () {
                  if (authCubit.resetPasswordForm.currentState!.validate()) {
                    authCubit.sendPasswordResetEmail();
                  }
                },
                text: AppStrings.resetYourPassword,
                height: 42,
                width: double.infinity,
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
