import '../../../../core/utils/app_strings.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class DropDownTrimWidget extends StatelessWidget {
  const DropDownTrimWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown(
      searchEnabled: true,
      borderColor: AppColors.addYouCarGrey,
      hint: AppStrings.trim,
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
        ValueItem(label: 'Base', value: '1'),
        ValueItem(label: 'Volante', value: '2'),
        ValueItem(label: 'Sport Line', value: '3'),
        ValueItem(label: 'Luxury Line', value: '4'),
        ValueItem(label: 'Competition', value: '5'),
        ValueItem(label: 'Quadrifoglio', value: '6'),
        ValueItem(label: 'xDrive', value: '7'),
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
