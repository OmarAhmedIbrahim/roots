import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roots/core/themes/text_themes.dart';
import '../../../../core/constants/images.dart';

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
            top: height * 0.13,
            left: width * 0.2,
            child: SizedBox(
              height: height * 0.2,
              width: width * 0.55,
              child: Image.asset(
                fit: BoxFit.fill,
                AppImages.krootsLogo,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: height * 0.25,
            child: SizedBox(
              width: width * 0.3,
              height: height * 0.28,
              child: SvgPicture.asset(
                fit: BoxFit.fill,
                'assets/images/landing_right.svg',
              ),
            ),
          ),
          Positioned(
            top: height * 0.45,
            left: width * 0.25,
            child: Text('Connect with Roots like \n       never before!',
                style: AppTextStyles.primaryTextStyle),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            child: SizedBox(
              width: width * 0.4,
              height: height * 0.4,
              child: SvgPicture.asset(
                fit: BoxFit.fill,
                'assets/images/landing_left.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
