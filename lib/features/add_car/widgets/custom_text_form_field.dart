import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onChanged,
  });

  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          hintStyle: CustomTextStyle.roboto700style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
        onChanged: onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: BorderSide(color: AppColors.addYouCarGrey),
  );
}
