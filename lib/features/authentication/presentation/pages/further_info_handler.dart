import 'package:flutter/material.dart';
import 'package:roots/core/themes/text_themes.dart';
import 'package:roots/features/authentication/presentation/pages/choosing_campus_page.dart';
import 'package:roots/features/authentication/presentation/pages/choosing_gender.dart';

import '../../../../core/app_paddings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/widgets/custom_back_button.dart';

class FurtherInfoHandler extends StatefulWidget {
  const FurtherInfoHandler({super.key});

  @override
  State<FurtherInfoHandler> createState() => _FurtherInfoHandlerState();
}

class _FurtherInfoHandlerState extends State<FurtherInfoHandler> {
  PageController pageController = PageController(initialPage: 0);
  int pageNumber = 0;
  double currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    AppPaddings pagePadding =
        AppPaddings(width: screenWidth, height: screenHeight);
    return Scaffold(
      body: Padding(
        padding: pagePadding.appPagePadding,
        child: Column(
          children: [
            CustomBackButton(
              backButtonColor: kprimaryColor,
            ),
            Expanded(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      2,
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
                  ),
                  Positioned(
                    top: screenHeight * 0.05,
                    left: screenWidth * 0.15,
                    child: SizedBox(
                        height: screenHeight * 0.2,
                        width: screenWidth * 0.6,
                        child: Image.asset(AppImages.krootsLogo)),
                  ),
                  Positioned(
                    top: screenHeight * 0.3,
                    child: SizedBox(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.6,
                      child: PageView(
                        onPageChanged: (index) {
                          setState(() {});
                          pageNumber = index;
                        },
                        controller: pageController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ChoosingCampusPage(buttonFunction: () {
                            setState(() {
                              //print('lol');
                              pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                              //pageController.jumpTo(1);
                            });
                          }),
                          ChoosingGender(
                            buttonFunction: () {},
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
