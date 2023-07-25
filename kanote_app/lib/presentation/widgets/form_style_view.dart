import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class FormStyleView extends StatelessWidget {
  const FormStyleView({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.maxLine = 1,
    this.minLine,
  });

  final String hintText;
  final Widget? suffixIcon;
  final int maxLine;
  final int? minLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      minLines: minLine,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kHintTextColor,
          ),
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kHintTextColor,
          ),
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
          vertical: MARGIN_MEDIUM_2,
        ),
        hintText: hintText,
        hintStyle: knNormalText().copyWith(color: kHintTextColor),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
