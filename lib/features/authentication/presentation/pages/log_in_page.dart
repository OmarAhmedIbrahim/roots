import 'package:flutter/material.dart';
import 'package:roots/core/constants/images.dart';
import 'package:roots/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:roots/features/landing/presentation/widgets/landing_decoration.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_divider_with_text.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';
import '../../../../core/widgets/custom_text_from_field.dart';
import '../../domain/entities/validator.dart';
import '../widgets/direct_authentication_widget.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.05,
            left: width * 0.05,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomBackButton(width: width, height: height),
                Image.asset(krootsLogo),
                Text(
                  'Login to your account',
                  style: primaryTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                  child: CustomTextFormField(
                    validator: Validator.emailValidator,
                    hintText: 'Email',
                    onSubmitted: (value) {},
                    prefixIcon: CustomTextFormFieldPrefixIcon(
                      icon: Icons.email,
                      iconColor: Colors.white,
                      backgroundColor: kprimaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    validator: Validator.passwordValidator,
                    onSubmitted: (value) {},
                    hintText: 'Password',
                    prefixIcon: CustomTextFormFieldPrefixIcon(
                      icon: Icons.lock,
                      iconColor: Colors.white,
                      backgroundColor: kprimaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: kprimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  buttonText: 'Login',
                  buttonColor: kprimaryColor,
                  borderRaduis: 30,
                  textVerticalPadding: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomDividerWithText(
                  dividerText: 'Or Login with',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DirectAuthenticationWidget(
                      image: kgoogleLogo,
                    ),
                    DirectAuthenticationWidget(
                      image: kfacbookLogo,
                    ),
                    DirectAuthenticationWidget(
                      image: kxLogo,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: kprimaryColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
