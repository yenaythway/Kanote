import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class KnButtonView extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool isDisable;
  final double margin;

  const KnButtonView({
    super.key,
    required this.label,
    required this.onTap,
    this.isDisable = false,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: ElevatedButton(
        onPressed: isDisable
            ? null
            : () {
                onTap();
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          padding: const EdgeInsets.symmetric(vertical: MARGIN_CARD_MEDIUM_2),
          disabledBackgroundColor: const Color.fromRGBO(145, 139, 148, 1.0),
        ),
        child: Text(
          label,
          style: knNormalText().copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
