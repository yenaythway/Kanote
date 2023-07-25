import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class CheckboxListTileView extends StatelessWidget {

  final String title;


  const CheckboxListTileView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: false,
      dense: true,
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool? value) {},
      title: Text(
        title,
        style: knNormalText().copyWith(
          color: kDescriptionColor,
        ),
      ),
    );
  }
}
