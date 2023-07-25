import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    this.suffixIcon,
    this.textController,
    this.keyboardType,
    required this.obscureText,
    required this.hintText,
  });
  final TextEditingController? textController;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: textController,
      cursorColor: kPrimaryDarkColor,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIconColor: kPrimaryDarkColor,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
