import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:roots/core/constants/colors.dart';
import 'package:roots/core/themes/text_themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: screenHeight * 0.25,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: EdgeInsets.only(top: 50, bottom: 10, left: 20),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //'lol',
                    'Salaam Alaykum,\n Omar',
                    style: AppTextStyles.largeTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.location,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'University of Nottingham',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: AppTextStyles.kfontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            backgroundColor: kprimaryColor,
          )
        ],
      ),
    );
  }
}
