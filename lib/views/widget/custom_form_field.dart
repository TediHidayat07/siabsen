import 'package:flutter/material.dart';
import 'package:siabsen/views/utils/helper.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final int? maxLines;
  final bool read;

  const CustomFormField({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
    this.maxLines = 1,
    this.read = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      cursorColor: cBlack,
      cursorErrorColor: cRed,
      decoration: InputDecoration(
        filled: true,
        fillColor: cWhite,
        enabledBorder: enableBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        errorStyle: button.copyWith(color: cRed),
        errorMaxLines: 2,
        focusedErrorBorder: focusedErrorBorder,
        hintText: hintText,
        hintStyle: subtitle3.copyWith(color: cDarkBlue),
        suffixIcon: suffixIcon,
        suffixIconColor: cLightGrey,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: subtitle3,
      maxLines: maxLines,
      readOnly: read,
    );
  }
}
