import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../res/colors.dart';
import '../view/sort&filter/cate_expanison_tile_view.dart';
import '../view/sort&filter/color_expansion_tile_view.dart';
import '../view/sort&filter/material_expansion_tile_view.dart';
import '../view/sort&filter/medium_expansion_tile_view.dart';
import '../view/sort&filter/price_expansion_tile_view.dart';
import '../view/sort&filter/size_expansion_tile_view.dart';
import '../view/sort&filter/sortby_expansiontile_view.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: deepPurpleColor,
          ),
        ),
        centerTitle: false,
        title: Text(
          "Sort & Filter",
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SortByExpansionTileView(),
                customDivider(),
                const CategoriesExpansionTileView(),
                customDivider(),
                const PriceExpansionTileView(),
                customDivider(),
                const MaterialsExpansionTileView(),
                customDivider(),
                const MediumExpansionTileView(),
                customDivider(),
                const SizeExpansionTileView(),
                customDivider(),
                const ColorExpansionView(),
                customDivider(),
                const SizedBox(height: 80,),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomLargeButton(title: "Apply this filter",function: (){},),
            ),
          )
        ],
      ),
    );
  }
}
