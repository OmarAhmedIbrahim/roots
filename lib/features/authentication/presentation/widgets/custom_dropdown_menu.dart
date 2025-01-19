import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.dropdownList, required this.onSelected,  this.hintText,
  });
  final String? hintText;
  final List dropdownList;
  final Function(dynamic) onSelected;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: Icon(
        Iconsax.arrow_down_1,
        color: kprimaryColor,
      ),
      selectedTrailingIcon: Icon(
        Iconsax.arrow_up_2,
        color: kprimaryColor,
      ),
      menuStyle: MenuStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.only(top: 5)),
        elevation: WidgetStateProperty.all(5),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
      ),
      helperText: '',
      enableFilter: true,
      enableSearch: true,
      requestFocusOnTap: true,
      hintText: 'Select',
      leadingIcon: CustomTextFormFieldPrefixIcon(
          icon: Iconsax.bank,
          backgroundColor: kprimaryColor,
          iconColor: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.none, width: 5, color: Colors.black),
              borderRadius: BorderRadius.circular(10))),
      width: 375,
      dropdownMenuEntries: dropdownList
          .map((e) => DropdownMenuEntry(value: e, label: e))
          .toList(),
      onSelected: onSelected,
    );
  }
}
