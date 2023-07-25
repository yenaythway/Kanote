import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_large_button.dart';

class ColorExpansionView extends StatelessWidget {
  const ColorExpansionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text("Color", style: styleWithDeePurpleLighter()),
        children: [
          RadioListTile(
            title: Text(
              'Red',
              style: styleWithGreyLarge(),
            ),
            value: 1,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Orange',
              style: styleWithGreyLarge(),
            ),
            value: 2,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Yellow',
              style: styleWithGreyLarge(),
            ),
            value: 3,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Green',
              style: styleWithGreyLarge(),
            ),
            value: 4,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Blue',
              style: styleWithGreyLarge(),
            ),
            value: 5,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Purple',
              style: styleWithGreyLarge(),
            ),
            value: 6,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Pink',
              style: styleWithGreyLarge(),
            ),
            value: 7,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Brown',
              style: styleWithGreyLarge(),
            ),
            value: 8,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          RadioListTile(
            title: Text(
              'Grey',
              style: styleWithGreyLarge(),
            ),
            value: 9,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
          CustomLargeButton(
            title: "Show Results",
            function: () {},
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
