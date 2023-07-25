import 'package:flutter/material.dart';
import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_checkbox_listtile.dart';
import '../../widgets/custom_large_button.dart';

class CategoriesExpansionTileView extends StatelessWidget {
  const CategoriesExpansionTileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text("Artwoks Categories", style: styleWithDeePurpleLighter()),
        children: [
          const CustomCheckBoxListTile(
            title: "WaterColor Art",
          ),
          const CustomCheckBoxListTile(
            title: "Oil Art",
          ),
          const CustomCheckBoxListTile(
            title: "Couahce Art",
          ),
          const CustomCheckBoxListTile(
            title: "Pencil Art",
          ),
          const CustomCheckBoxListTile(
            title: "Pastel Art",
          ),
          const CustomCheckBoxListTile(
            title: "Digital Art",
          ),
          const CustomCheckBoxListTile(
            title: "Street Art",
          ),
          const CustomCheckBoxListTile(
            title: "Cartoon Art",
          ),
          const CustomCheckBoxListTile(
            title: "Modern Art",
          ),
          const CustomCheckBoxListTile(
            title: "Realism Art",
          ),
          const CustomCheckBoxListTile(
            title: "Contempoary Art",
          ),
          const CustomCheckBoxListTile(
            title: "Abstract Art",
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
