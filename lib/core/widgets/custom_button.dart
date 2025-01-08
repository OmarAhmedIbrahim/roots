import 'package:flutter/material.dart';
import '../constants/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.textColor,
      this.buttonColor,
      this.borderColor,
      this.borderRaduis, this.textVerticalPadding});
  final Function() onTap;
  final String buttonText;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? borderRaduis;
  final double? textVerticalPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ?? Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(borderRaduis ?? 60),
            color: buttonColor ?? Colors.white),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:textVerticalPadding?? 20.0),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? Colors.white,
                fontFamily: kfontFamily,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
