import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

showBidDialog(BuildContext context,String title,String body) {
  AlertDialog alert = AlertDialog(
    insetPadding:
        const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3, vertical: 24.0),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w600,
            color: kPrimaryDarkColor,
          ),
        ),
        const SizedBox(height: MARGIN_CARD_MEDIUM_2),
        Text(
         body,
          textAlign: TextAlign.center,
          style: knText13().copyWith(
            color: kDescriptionColor,
            height: 1.5,
          ),
        ),
        const SizedBox(height: MARGIN_CARD_MEDIUM_2),
        Row(
          children: [
            Expanded(
              child: DialogButtonView(
                label: "Cancel",
                borderColor: kDescriptionColor,
                backgroundColor: Colors.transparent,
                labelColor: kDescriptionColor,
                onTap: () {
                  context.pop();
                },
              ),
            ),
            const SizedBox(width: MARGIN_MEDIUM_2),
            Expanded(
              child: DialogButtonView(
                label: "Confirm",
                borderColor: kPrimaryColor,
                backgroundColor: kPrimaryColor,
                labelColor: Colors.white,
                onTap: () {
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class DialogButtonView extends StatelessWidget {
  final String label;
  final Color borderColor;
  final Color backgroundColor;
  final Color labelColor;
  final Function onTap;

  const DialogButtonView({super.key, 
    required this.label,
    required this.borderColor,
    required this.backgroundColor,
    required this.labelColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_3,
          vertical: MARGIN_CARD_MEDIUM_2,
        ),
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
      ),
      child: Text(
        label,
        style: knNormalText().copyWith(
          color: labelColor,
        ),
      ),
    );
  }
}
