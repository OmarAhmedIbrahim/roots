import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.backButtonColor,
    this.iconColor,
  });
  final Color? backButtonColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: backButtonColor ?? Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            size: 17,
            Icons.arrow_back,
            color: iconColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
