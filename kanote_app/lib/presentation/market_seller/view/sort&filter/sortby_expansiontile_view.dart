import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';

import '../../res/custom_textstyles.dart';
import '../../widgets/custom_large_button.dart';

class SortByExpansionTileView extends StatelessWidget {
  const SortByExpansionTileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text(
          "Sort By",
          style: styleWithDeePurpleLighter(),
        ),
        children: [
          RadioListTile(
            title: Text(
              'Sort By Popularity',
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
              'Best Sellers',
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
              'Price (Heigh To low)',
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
              'Price (Low To Heigh)',
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
              'Artwork Posted Date (Ascending)',
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
              'Artwork Posted Date (Decending)',
              style: styleWithGreyLarge(),
            ),
            value: 6,
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
