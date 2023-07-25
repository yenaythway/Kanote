import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: kPrimaryDarkColor,
          fontSize: MARGIN_LARGE,
          fontWeight: FontWeight.w600,
          letterSpacing: 1),
    );
  }
}
