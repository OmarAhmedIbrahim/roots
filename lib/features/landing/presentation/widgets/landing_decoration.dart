import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roots/core/constants/colors.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/constants/images.dart';

TextStyle primaryTextStyle = TextStyle(
  fontFamily: kfontFamily,
  fontWeight: FontWeight.w700,
  fontSize: 16,
);
TextStyle hintTextStyle = TextStyle(
    fontFamily: kfontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: khintColor);

class LandingDecoration extends StatelessWidget {
  const LandingDecoration({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: height * 0.15,
            left: width * 0.2,
            child: Image.asset(
              height: height * 0.23,
              width: width * 0.6,
              krootsLogo,
            ),
          ),
          Positioned(
            right: 0,
            top: height * 0.25,
            child: SvgPicture.asset(
              width: width * 0.3,
              height: height * 0.28,
              'assets/images/landing_right.svg',
            ),
          ),
          Positioned(
            top: height * 0.43,
            left: width * 0.25,
            child: Text('Connect with Roots like \n       never before!',
                style: primaryTextStyle),
          ),
          Positioned(
            top: height * 0.38,
            child: SvgPicture.asset(
              'assets/images/landing_left.svg',
              width: width * 0.5,
              height: height * 0.35,
            ),
          ),
        ],
      ),
    );
  }
}
