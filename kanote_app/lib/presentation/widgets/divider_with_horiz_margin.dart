import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/widgets/kn_divider.dart';

class DividerWithMargin extends StatelessWidget {

  final double margin;
  final Color color;

  const DividerWithMargin({super.key, this.margin = MARGIN_CARD_MEDIUM_2, this.color = kDividerColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: margin),
        KNDivider(margin: MARGIN_MEDIUM_2, color: color),
        SizedBox(height: margin),
      ],
    );
  }
}
