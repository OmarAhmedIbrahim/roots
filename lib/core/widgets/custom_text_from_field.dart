import 'package:flutter/material.dart';
import 'package:roots/core/themes/text_themes.dart';
import 'custom_text_form_field_prefix_icon.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.onSubmitted,
      this.controller,
      this.obscureText,
      this.hintText,
      this.prefixIcon,
      this.validator});

  final String? hintText;
  final Function(String) onSubmitted;
  final TextEditingController? controller;
  final bool? obscureText;
  final CustomTextFormFieldPrefixIcon? prefixIcon;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator ??
            (value) {
              if (value?.isEmpty ?? true) {
                return 'This field is empty ';
              }
            },
        onFieldSubmitted: (value) {
          onSubmitted(value);
        },
        decoration: InputDecoration(
          errorMaxLines: 2,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: AppTextStyles.hintTextStyle,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
