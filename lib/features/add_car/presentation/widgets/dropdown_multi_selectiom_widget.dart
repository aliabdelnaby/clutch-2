// import 'package:clutch/core/utils/app_colors.dart';
// import 'package:clutch/core/utils/app_text_style.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// class DropDownMultiSelection extends StatelessWidget {
//   const DropDownMultiSelection({
//     super.key,
//     required this.listItem,
//     required this.hintText,
//   });

//   final List<String> listItem;
//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<String>.multiSelection(
//       popupProps: PopupPropsMultiSelection.dialog(
//         showSelectedItems: true,
//         showSearchBox: true,
//         searchFieldProps: TextFieldProps(
//           decoration: InputDecoration(
//             hintText: 'Search ..',
//             enabledBorder: getBorderStyle(),
//             focusedBorder: getBorderStyle(),
//           ),
//         ),
//       ),
//       items: listItem,
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         dropdownSearchDecoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: CustomTextStyle.roboto700style18,
//           isDense: true,
//           enabledBorder: getBorderStyle(),
//           focusedBorder: getBorderStyle(),
//         ),
//       ),
//       onChanged: (val) {
//         print(val);
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Required field";
//         }
//         return null;
//       },
//     );
//   }
// }

// OutlineInputBorder getBorderStyle() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(24),
//     borderSide: BorderSide(
//       color: AppColors.addYouCarGrey,
//     ),
//   );
// }

import 'package:clutch/core/utils/app_colors.dart';
import 'package:clutch/core/utils/app_strings.dart';
import 'package:clutch/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class MultiDropDown extends StatelessWidget {
  const MultiDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown(
      searchEnabled: true,
      borderColor: AppColors.addYouCarGrey,
      hint: AppStrings.whatDidYouDo,
      hintStyle: CustomTextStyle.roboto700style18,
      borderWidth: 1,
      selectedOptionTextColor: Colors.red,
      showClearIcon: true,
      borderRadius: 20,
      hintColor: Colors.red,
      onOptionSelected: (options) {
        debugPrint(options.toString());
      },
      options: const <ValueItem>[
        ValueItem(label: 'Oil change ', value: '1'),
        ValueItem(label: 'Air filter replacement', value: '2'),
        ValueItem(label: 'Spark plug replacement', value: '3'),
        ValueItem(
            label: 'Fluid top-up (coolant, brake fluid, etc.)', value: '4'),
        ValueItem(label: 'Wheel alignment', value: '5'),
        ValueItem(label: 'Engine air filter replacement', value: '6'),
        ValueItem(label: 'Other', value: '7'),
      ],
      selectionType: SelectionType.multi,
      chipConfig: const ChipConfig(
        wrapType: WrapType.wrap,
        backgroundColor: Colors.red,
      ),
      dropdownHeight: 300,
      optionTextStyle: const TextStyle(fontSize: 16),
      selectedOptionIcon: const Icon(Icons.check_circle),
    );
  }
}
