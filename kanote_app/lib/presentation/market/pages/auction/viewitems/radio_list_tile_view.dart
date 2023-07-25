import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class RadioListTileView extends StatelessWidget {
  final int value;
  final int groupValue;
  final String title;

  const RadioListTileView({super.key, 
    required this.value,
    required this.groupValue,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      dense: true,
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      groupValue: groupValue,
      activeColor: kPrimaryColor,
      onChanged: (value) {},
      title: Text(
        title,
        style: knNormalText().copyWith(
          color: kDescriptionColor,
        ),
      ),
    );
  }
}
