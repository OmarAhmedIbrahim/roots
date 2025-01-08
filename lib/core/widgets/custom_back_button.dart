import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: width * 0.09,
        height: height * 0.04,
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            size: height * 0.02,
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
