import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
class CustomDividerWithText extends StatelessWidget {
  const CustomDividerWithText({
    super.key, required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 20,
          child: Divider(
            color: kdividerColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            dividerText,
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          width: 20,
          child: Divider(
            color: kdividerColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
