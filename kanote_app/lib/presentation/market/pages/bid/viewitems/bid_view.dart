import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class BidView extends StatelessWidget {

  final int index;


  const BidView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 30,
            color: kPrimaryColor,
            child: Center(
              child: Text(
                "${index + 1}.",
                style: knNormalText().copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(width: MARGIN_MEDIUM),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Samantha Larusso",
                style: knNormalText().copyWith(
                  color: kPrimaryDarkColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "03/05/2023 18:27:12",
                style: knTextSmall().copyWith(
                  color: kDescriptionColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: MARGIN_MEDIUM),
        Expanded(
          flex: 3,
          child: Text(
            "80000Ks",
            textAlign: TextAlign.right,
            style: knNormalText().copyWith(
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
