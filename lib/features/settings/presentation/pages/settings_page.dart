import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:roots/core/constants/colors.dart';
import 'package:roots/core/constants/images.dart';
import 'package:roots/core/themes/text_themes.dart';
import 'package:roots/features/settings/presentation/widgets/settings_page_builder.dart';

import '../../../../core/app_paddings.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth * 0.3,
              height: screenHeight * 0.12,
              child: Image.asset(
                AppImages.krootsLogo,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: SettingsPageBuilder(
                text: 'Profile',
                icon: Iconsax.user,
                onTap: (){},
              ),
            ),
            SettingsPageBuilder(
              text: 'Contacts',
              icon: Iconsax.book_1,
              onTap: (){},
            ),
            SettingsPageBuilder(
              text: 'Payment Information',
              icon: Iconsax.card,
              onTap: (){},
            ),
            SettingsPageBuilder(
              text: 'Campus',
              icon: Iconsax.bank,
              onTap: (){},
            ),
            SettingsPageBuilder(
              text: 'Notification',
              icon: Iconsax.notification,
              onTap: (){},
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                'Sign Out',
                style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 20,
                    fontFamily: AppTextStyles.kfontFamily,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

