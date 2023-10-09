import '../../../../core/utils/app_strings.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class DropDownBrandNameWidget extends StatelessWidget {
  const DropDownBrandNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown(
      searchEnabled: true,
      borderColor: AppColors.addYouCarGrey,
      hint: AppStrings.brandName,
      hintStyle: CustomTextStyle.roboto700style18,
      borderWidth: 1,
      hintFontSize: 16,
      selectedOptionTextColor: Colors.red,
      showClearIcon: true,
      borderRadius: 20,
      hintColor: Colors.red,
      onOptionSelected: (options) {
        debugPrint(options.toString());
      },
      options: const <ValueItem>[
        ValueItem(label: 'Tesla', value: '1'),
        ValueItem(label: 'Toyota', value: '2'),
        ValueItem(label: 'Skoda', value: '3'),
        ValueItem(label: 'Rover', value: '4'),
        ValueItem(label: 'Nissan', value: '5'),
        ValueItem(label: 'Hummer', value: '6'),
        ValueItem(label: 'BYD', value: '7'),
      ],
      selectionType: SelectionType.single,
      chipConfig: const ChipConfig(
        backgroundColor: Colors.red,
      ),
      dropdownHeight: 300,
      optionTextStyle: const TextStyle(fontSize: 16),
      selectedOptionIcon: const Icon(Icons.check_circle),
    );
  }
}
