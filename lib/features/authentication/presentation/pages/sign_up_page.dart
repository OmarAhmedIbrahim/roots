import 'package:flutter/material.dart';
import 'package:roots/features/authentication/domain/entities/validator.dart';
import 'package:roots/features/authentication/presentation/pages/choosing_campus_page.dart';
import '../../../../core/app_paddings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_divider_with_text.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';
import '../../../../core/widgets/custom_text_from_field.dart';
import '../widgets/direct_authentication_widget.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();

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
                  'Create your account',
                  style: AppTextStyles.primaryTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                  child: CustomTextFormField(
                    elevation: 10,
                    hintText: 'Full name',
                    validator: Validator.filledValidator,
                    onSubmitted: (value) {},
                    prefixIcon: CustomTextFormFieldPrefixIcon(
                      icon: Icons.person,
                      iconColor: Colors.white,
                      backgroundColor: kprimaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    elevation: 10,
                    validator: Validator.emailValidator,
                    onSubmitted: (value) {},
                    hintText: 'Email',
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
                    elevation: 10,
                    controller: passwordController,
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextFormField(
                    elevation: 10,
                    validator: (value) => Validator.confirmPasswordValidator(
                        value, passwordController.text),
                    onSubmitted: (value) {},
                    hintText: 'Confirm Password',
                    prefixIcon: CustomTextFormFieldPrefixIcon(
                      icon: Icons.lock,
                      iconColor: Colors.white,
                      backgroundColor: kprimaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // If the registration process is done successfully
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChoosingCampusPage()));
                    }
                  },
                  buttonText: 'Register',
                  buttonColor: kprimaryColor,
                  borderRadius: 30,
                  textVerticalPadding: 12,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomDividerWithText(
                  dividerText: 'Or register with',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DirectAuthenticationWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosingCampusPage()));
                      },
                      image: AppImages.kgoogleLogo,
                    ),
                    DirectAuthenticationWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosingCampusPage()));
                      },
                      image: AppImages.kfacbookLogo,
                    ),
                    DirectAuthenticationWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChoosingCampusPage()));
                      },
                      image: AppImages.kxLogo,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
