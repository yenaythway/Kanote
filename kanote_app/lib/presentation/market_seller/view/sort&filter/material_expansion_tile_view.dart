import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_checkbox_listtile.dart';
import '../../widgets/custom_large_button.dart';

class MaterialsExpansionTileView extends StatelessWidget {
  const MaterialsExpansionTileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text("Materials ", style: styleWithDeePurpleLighter()),
        children: [
          const CustomCheckBoxListTile(
            title: "Paper",
          ),
          const CustomCheckBoxListTile(
            title: "Canvas",
          ),
          const CustomCheckBoxListTile(
            title: "Clothes(Textiles)",
          ),
          const CustomCheckBoxListTile(
            title: "Plastic",
          ),
          const CustomCheckBoxListTile(
            title: "Glass",
          ),
          const CustomCheckBoxListTile(
            title: "Ceramic",
          ),
          const CustomCheckBoxListTile(
            title: "Metal",
          ),
          const CustomCheckBoxListTile(
            title: "Wood",
          ),
          const CustomCheckBoxListTile(
            title: "Soft Copy",
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
