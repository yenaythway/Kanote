import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';

class KNDivider extends StatelessWidget {

  final double margin;
  final Color color;

  const KNDivider({super.key, this.margin = 0, this.color = kDividerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      color: color,
      height: 1,
    );
  }
}
