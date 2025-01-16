import 'package:flutter/material.dart';
import 'package:roots/core/constants/images.dart';
import 'package:roots/features/authentication/presentation/pages/sign_up_page.dart';
import '../../../../core/app_paddings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_divider_with_text.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';
import '../../../../core/widgets/custom_text_from_field.dart';
import '../../domain/entities/validator.dart';
import '../widgets/direct_authentication_widget.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    AppPaddings pagePadding =
        AppPaddings(width: screenWidth, height: screenHeight);
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: pagePadding.appPagePadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomBackButton(
                  backButtonColor: kprimaryColor,
                ),
                SizedBox(
                    width: screenWidth * 0.5,
                    height: screenHeight * 0.23,
                    child: Image.asset(AppImages.krootsLogo)),
                Text(
                  'Login to your account',
                  style: AppTextStyles.primaryTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 8),
                  child: CustomTextFormField(
                    elevation: 10,
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
                    elevation: 5,
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
                  borderRadius: 30,
                  textVerticalPadding: 12,
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
                      onTap: () {},
                      image: AppImages.kgoogleLogo,
                    ),
                    DirectAuthenticationWidget(
                      onTap: () {},
                      image: AppImages.kfacbookLogo,
                    ),
                    DirectAuthenticationWidget(
                      onTap: () {},
                      image: AppImages.kxLogo,
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
