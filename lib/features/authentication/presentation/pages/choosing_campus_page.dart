import 'package:flutter/material.dart';
import 'package:roots/core/constants/colors.dart';
import 'package:roots/core/widgets/custom_button.dart';
import '../../../../core/themes/text_themes.dart';
import '../widgets/custom_dropdown_menu.dart';

class ChoosingCampusPage extends StatefulWidget {
  const ChoosingCampusPage({super.key , required this.buttonFunction});
final  Function() buttonFunction;

  @override
  State<ChoosingCampusPage> createState() => _ChoosingCampusPageState();
}

class _ChoosingCampusPageState extends State<ChoosingCampusPage> {
  bool isButtonEnabled = false;
  PageController pageController = PageController();
  final List campusList = ['aaaa', 'ab', 'ac', 'd'];
  String? selectedValue;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Text(
          '  Please select your  \n  preferred campus',
          style: AppTextStyles.primaryTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: CustomDropDownMenu(
            dropdownList: campusList,
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
