import 'package:flutter/material.dart';
import 'package:roots/core/themes/text_themes.dart';
import 'custom_text_form_field_prefix_icon.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.onSubmitted,
    this.controller,
    this.obscureText,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.elevation,
  });

  final String? hintText;
  final Function(String) onSubmitted;
  final TextEditingController? controller;
  final bool? obscureText;
  final CustomTextFormFieldPrefixIcon? prefixIcon;
  final FormFieldValidator<String>? validator;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0,
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator,
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
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0
              ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
