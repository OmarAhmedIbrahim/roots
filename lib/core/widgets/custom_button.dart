import 'package:flutter/material.dart';
import '../constants/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.textColor,
      this.buttonColor,
      this.borderColor});
  final Function() onTap;
  final String buttonText;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              border: Border.all(
                color: borderColor ?? Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(60),
              color: buttonColor ?? Colors.white),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
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
      ),
    );
  }
}
