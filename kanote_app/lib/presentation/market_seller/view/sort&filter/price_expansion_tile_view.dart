import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_large_button.dart';

class PriceExpansionTileView extends StatefulWidget {
  const PriceExpansionTileView({super.key});

  @override
  State<PriceExpansionTileView> createState() => _PriceExpansionTileViewState();
}

class _PriceExpansionTileViewState extends State<PriceExpansionTileView> {
  RangeValues _values = const RangeValues(1000000, 4000000);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: secondaryPurpleColor,
        collapsedIconColor: secondaryPurpleColor,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
        tilePadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text("Price", style: styleWithDeePurpleLighter()),
        children: [
          Text("Choose Your Price Range", style: styleWithDeePurpleLighter()),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              CustomPriceBox(
                text: "Minium",
                price: "300000 Kyats",
              ),
              SizedBox(
                width: 40,
              ),
              CustomPriceBox(
                text: "Medium",
                price: "500000 Kyats",
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RangeSlider(
            values: _values,
            min: 0,
            max: 5000000,
            inactiveColor: greyColor,
            activeColor: const Color(0xffdcdcdc),
            onChanged: (newValues) {
              setState(() {
                _values = newValues;
              });
            },
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                ' ${_values.start.round()} kyats',
                style: styleWithGreyLarge(),
              ),
              Text('${_values.end.round()}+ kyats',
                  style: styleWithGreyLarge()),
            ],
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

class CustomPriceBox extends StatelessWidget {
  final String text;
  final String price;
  const CustomPriceBox({
    super.key,
    required this.text,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: styleWithGreyLarge(),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: greyColor)),
            child: Center(child: Text(price, style: styleWithGreyLarge())),
          )
        ],
      ),
    );
  }
}
