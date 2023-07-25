import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

class CustomCheckBoxListTile extends StatelessWidget {
  final String title;
  const CustomCheckBoxListTile({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: secondaryPurpleColor,
      value: false,
      dense: true,
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool? value) {},
      title: Text(title,style: styleWithGreyLarge(),),
    );
  }
}
