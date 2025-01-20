import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTextStyles {
  static const String kfontFamily = 'Poppins';

  static const TextStyle hintTextStyle = TextStyle(
      fontFamily: kfontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: khintColor);
  static const TextStyle primaryTextStyle = TextStyle(
    fontFamily: kfontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const TextStyle largeTextStyle = TextStyle(
    fontFamily: kfontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: Colors.white,
  );

}