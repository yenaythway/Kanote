import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class CreatePostButtonView extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final void Function()? ontap;

  CreatePostButtonView({
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.labelColor,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: MARGIN_CARD_MEDIUM_2,
        ),
        side: BorderSide(color: borderColor),
      ),
      child: Text(
        label,
        style: knSubTitle().copyWith(
          color: labelColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
