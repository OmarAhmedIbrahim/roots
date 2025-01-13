import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:roots/core/constants/colors.dart';
import 'package:roots/core/constants/images.dart';
import 'package:roots/core/widgets/custom_back_button.dart';
import 'package:roots/core/widgets/custom_text_form_field_prefix_icon.dart';

import '../widgets/custom_dropdown_menu.dart';

class ChoosingCampusPage extends StatefulWidget {
  const ChoosingCampusPage({super.key});

  @override
  State<ChoosingCampusPage> createState() => _ChoosingCampusPageState();
}

class _ChoosingCampusPageState extends State<ChoosingCampusPage> {
  final List campusList = ['aaaa', 'ab', 'ac', 'd'];
  String? selectedValue;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final SingleValueDropDownController dropDownController =
        SingleValueDropDownController();

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        top: height * 0.05,
        left: width * 0.05,
        right: 20,
      ),
      child: Column(
        children: [
          CustomBackButton(width: width, height: height),
          Image.asset(krootsLogo),
          CustomDropDownMenu(dropdownList: campusList),
        ],
      ),
    ));
  }
}

