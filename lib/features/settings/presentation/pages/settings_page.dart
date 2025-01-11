import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:roots/core/constants/colors.dart';
import 'package:roots/core/constants/fonts.dart';
import 'package:roots/core/constants/images.dart';
import 'package:roots/features/settings/presentation/widgets/settings_page_builder.dart';

import '../../../landing/presentation/widgets/landing_decoration.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: height * 0.05,
          left: width * 0.05,
          right: width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 0.3,
              height: height * 0.12,
              child: Image.asset(
                krootsLogo,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.05),
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
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                'Sign Out',
                style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 20,
                    fontFamily: kfontFamily,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Icon(
// Iconsax.book_1,
// color: Colors.black,
// ),
// Icon(
// Iconsax.card,
// color: Colors.black,
// ),
// Icon(
// Iconsax.bank,
// color: Colors.black,
// ),
// Icon(
// Iconsax.notification,
// color: Colors.black,
// ),
