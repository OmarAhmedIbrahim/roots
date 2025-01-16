import 'package:flutter/cupertino.dart';

class AppPaddings {
  final double height;
  final double width;

  AppPaddings({required this.width, required this.height});

  EdgeInsets get appPagePadding => EdgeInsets.only(
    top: height * 0.05,
    left: width * 0.05,
    right: width * 0.05,
  );
}
