import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';
class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.dropdownList,
  });

  final List dropdownList;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      enableFilter: true,
      enableSearch: true,
      requestFocusOnTap: true,
      hintText: 'Select Your Campus',
      leadingIcon: CustomTextFormFieldPrefixIcon(
          icon: Iconsax.bank,
          backgroundColor: kprimaryColor,
          iconColor: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10))),
      trailingIcon: Icon(
        Iconsax.arrow_down_1,
        color: kprimaryColor,
      ),
      width: double.maxFinite,
      dropdownMenuEntries: dropdownList
          .map((e) => DropdownMenuEntry(value: e, label: e))
          .toList(),
      onSelected: (value) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
