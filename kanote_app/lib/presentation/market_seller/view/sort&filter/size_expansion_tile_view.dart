import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_checkbox_listtile.dart';
import '../../widgets/custom_large_button.dart';

class SizeExpansionTileView extends StatelessWidget {
  const SizeExpansionTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text("Size ", style: styleWithDeePurpleLighter()),
        children: [
          const CustomCheckBoxListTile(
            title: "Small (under 40cm)",
          ),
          const CustomCheckBoxListTile(
            title: "Medium (40cm - 100cm)",
          ),
          const CustomCheckBoxListTile(
            title: "Large (over 100cm)",
          ),
          const CustomCheckBoxListTile(
            title: "Custom Size",
          ),
          const SizedBox(
            height: 10,
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
