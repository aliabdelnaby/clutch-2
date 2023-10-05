import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDownMultiSelection extends StatelessWidget {
  const DropDownMultiSelection({
    super.key,
    required this.listItem,
    required this.hintText,
  });

  final List<String> listItem;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>.multiSelection(
      popupProps: PopupPropsMultiSelection.dialog(
        showSelectedItems: true,
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText: 'Search ..',
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
          ),
        ),
      ),
      items: listItem,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          hintText: hintText,
          hintStyle: CustomTextStyle.roboto700style18,
          isDense: true,
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
      onChanged: (val) {
        print(val);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "Required field";
        }
        return null;
      },
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: BorderSide(
      color: AppColors.addYouCarGrey,
    ),
  );
}
