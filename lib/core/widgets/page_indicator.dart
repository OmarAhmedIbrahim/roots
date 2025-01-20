import 'package:flutter/material.dart';

import '../constants/colors.dart';
class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageNumber, required this.numberOfIndicators,
  });

  final int pageNumber;
  final int numberOfIndicators;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfIndicators,
            (index) => Padding(
          padding:
          const EdgeInsets.only(top: 8.0, bottom: 8, left: 5),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: 5,
            width: 30,
            decoration: BoxDecoration(
              color: index == pageNumber
                  ? kprimaryColor
                  : kfadedPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
