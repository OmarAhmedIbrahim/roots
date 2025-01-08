import 'package:flutter/material.dart';
import 'package:roots/core/widgets/custom_button.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/landing_decoration.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          LandingDecoration(),
          CustomButton(
              buttonText: 'Sign up',
              textColor: Colors.white,
              buttonColor: kprimaryColor,
              onTap: () {}),
          CustomButton(
            buttonText: 'Sign In',
            textColor: Colors.black,
            onTap: () {},
            borderColor: kprimaryColor,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.17,
          )
        ],
      ),
    );
  }
}
