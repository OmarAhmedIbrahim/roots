import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_dropdown_menu.dart';

class ChoosingGender extends StatefulWidget {
  const ChoosingGender({super.key, required this.buttonFunction});

  @override
  State<ChoosingGender> createState() => _ChoosingGenderState();
  final Function() buttonFunction;
}

class _ChoosingGenderState extends State<ChoosingGender> {
  bool isButtonEnabled = false;
  PageController pageController = PageController();
  final List genderList = ['Male', "Female"];
  String? selectedValue;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          '  What is your gender ?',
          style: AppTextStyles.primaryTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: CustomDropDownMenu(
            dropdownList: genderList,
            onSelected: (value) {
              setState(() {
                isButtonEnabled = true;
                FocusManager.instance.primaryFocus?.unfocus();
              });
            },
          ),
        ),
        SizedBox(
          height: 100,
        ),
        isButtonEnabled
            ? CustomButton(
                width: screenWidth * 0.5,
                onTap: widget.buttonFunction,
                buttonText: 'Next',
                buttonColor: kprimaryColor,
              )
            : CustomButton(
                width: screenWidth * 0.5,
                onTap: () {},
                buttonText: 'Next',
                buttonColor: Colors.grey,
              ),
      ],
    ));
  }
}
