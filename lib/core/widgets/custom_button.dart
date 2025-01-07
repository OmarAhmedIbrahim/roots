import 'package:flutter/material.dart';
import 'package:roots/core/constants.dart';
import '../classes/custom_button_class.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.details, required this.onTap});
  Function() onTap;
  CustomButtonClass details;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: details.buttonColor ?? Colors.white),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                details.buttonText,
                style: TextStyle(
                  fontSize: 16,
                  color: details.textColor ?? Colors.white,
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
