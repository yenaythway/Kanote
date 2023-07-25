import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';

class CutomTextfieldWidget extends StatelessWidget {
  final String hintText;
  const CutomTextfieldWidget({
    super.key, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: greyColor,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}