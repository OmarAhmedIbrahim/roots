import 'package:flutter/material.dart';
class CustomTextFormFieldPrefixIcon extends StatelessWidget {
  const CustomTextFormFieldPrefixIcon({
    super.key, required this.icon, required this.backgroundColor, required this.iconColor,
  });
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 50,
        height: 55,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Center(
            child: Icon(
              icon,
              color: iconColor,
            )),
      ),
    );
  }
}
