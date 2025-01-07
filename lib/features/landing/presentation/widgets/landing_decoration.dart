import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants.dart';

class LandingDecoration extends StatelessWidget {
  const LandingDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Image.asset(
              krootsLogo,
            ),
          ),
          Positioned(
            right: 0,
            top: MediaQuery.of(context).size.width * 0.5,
            child: SvgPicture.asset(
              'assets/images/landing_right.svg',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.9,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Text(
              'Connect with Roots like \n       never before!',
              style: TextStyle(
                fontFamily: kfontFamily,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.8,
            child: SvgPicture.asset('assets/images/landing_left.svg'),
          ),
        ],
      ),
    );
  }
}
