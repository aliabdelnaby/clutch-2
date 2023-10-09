import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDownSearchWidget extends StatelessWidget {
  const DropDownSearchWidget({
    super.key,
    required this.listItem,
    required this.hintText,
    required this.selectedItem,
    this.onChanged,
    this.validator,
  });

  final List<String> listItem;
  final String hintText;
  final String selectedItem;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      dropdownBuilder: _style,
      popupProps: PopupProps.dialog(
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
      onChanged: onChanged,
      selectedItem: selectedItem,
      validator:validator,
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

Widget _style(BuildContext context, String? selectedItem) {
  return Text(
    selectedItem!,
    style: CustomTextStyle.roboto700style18,
  );
}
