import 'package:flutter/material.dart';
import 'package:roots/features/authentication/domain/entities/validator.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_divider_with_text.dart';
import '../../../../core/widgets/custom_text_form_field_prefix_icon.dart';
import '../../../../core/widgets/custom_text_from_field.dart';
import '../../../landing/presentation/widgets/landing_decoration.dart';
import '../widgets/direct_authentication_widget.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
  final Validator validator = Validator();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomBackButton(width: width, height: height),
                Image.asset(krootsLogo),
                Text(
                  'Create your account',
                  style: primaryTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                  child: CustomTextFormField(
                    hintText: 'Full name',
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
                    validator: validator.emailValidator,
                    onSubmitted: (value) {
                    },
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
                    controller: passwordController,
                    validator: validator.passwordValidator,
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
                    if (formKey.currentState!.validate()) {}
                  },
                  buttonText: 'Register',
                  buttonColor: kprimaryColor,
                  borderRaduis: 30,
                  textVerticalPadding: 10,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
