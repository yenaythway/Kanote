import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_checkbox_listtile.dart';
import '../../widgets/custom_large_button.dart';

class MediumExpansionTileView extends StatelessWidget {
  const MediumExpansionTileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        title: Text("Medium ", style: styleWithDeePurpleLighter()),
        children: [
          const CustomCheckBoxListTile(
            title: "Graphite Pencil",
          ),
          const CustomCheckBoxListTile(
            title: "Charcoal",
          ),
          const CustomCheckBoxListTile(
            title: "Ink",
          ),
          const CustomCheckBoxListTile(
            title: "Crayon",
          ),
          const CustomCheckBoxListTile(
            title: "Colorpencil",
          ),
          const CustomCheckBoxListTile(
            title: "Oil",
          ),
          const CustomCheckBoxListTile(
            title: "Digital Pen",
          ),
          const CustomCheckBoxListTile(
            title: "Textile Paint",
          ),
          const CustomCheckBoxListTile(
            title: "Acrylic",
          ),
          const CustomCheckBoxListTile(
            title: "Watercolor",
          ),
          const CustomCheckBoxListTile(
            title: "Gouache (Poster)",
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
