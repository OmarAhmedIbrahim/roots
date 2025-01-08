import 'package:flutter/material.dart';
import '../../features/landing/presentation/widgets/landing_decoration.dart';
import 'custom_text_form_field_prefix_icon.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.onSubmitted,
      this.controller,
      this.obscureText,
      this.hintText,
      this.prefixIcon});

  final String? hintText;
  final Function(String) onSubmitted;
  final TextEditingController? controller;
  final bool? obscureText;
  final CustomTextFormFieldPrefixIcon? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field is empty ';
          }
        },
        onFieldSubmitted: (value) {
          onSubmitted(value);
        },
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintTextStyle,
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
