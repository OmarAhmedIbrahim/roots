import 'package:flutter/material.dart';
import 'package:roots/core/widgets/custom_button.dart';
import 'package:roots/features/authentication/presentation/pages/sign_up_page.dart';
import '../../../../core/constants/colors.dart';
import '../../../authentication/presentation/pages/sign_in_page.dart';
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
          Padding (
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                buttonText: 'Sign up',
                textColor: Colors.white,
                buttonColor: kprimaryColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              buttonText: 'Sign In',
              textColor: Colors.black,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              borderColor: kprimaryColor,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.15,
          )
        ],
      ),
    );
  }
}
