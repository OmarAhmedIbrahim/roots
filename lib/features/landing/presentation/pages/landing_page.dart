import 'package:flutter/material.dart';
import 'package:roots/core/classes/custom_button_class.dart';
import 'package:roots/core/widgets/custom_button.dart';
import '../../../../core/constants.dart';
import '../widgets/landing_decoration.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final CustomButtonClass signUp = CustomButtonClass(
      buttonText: 'Sign up',
      textColor: Colors.white,
      buttonColor: kprimaryColor);
  final CustomButtonClass signIn =
      CustomButtonClass(buttonText: 'Sign up', textColor: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LandingDecoration(),
          CustomButton(details: signUp, onTap: () {}),
          CustomButton(details: signIn, onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.2,
          )
        ],
      ),
    );
  }
}

