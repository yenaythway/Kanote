import 'package:flutter/material.dart';

import '../res/custom_textstyles.dart';
import 'custom_artwork_image_widget.dart';
import 'custom_divider.dart';

class CustomCostDetailWidget extends StatelessWidget {
  final String price;
  final String shipping;
  final String tax;
  final String total;
  final String additional;
  const CustomCostDetailWidget({
    super.key,
    required this.price,
    required this.shipping,
    required this.tax,
    required this.total,
    required this.additional,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      decoration: const BoxDecoration(color: Color(0xfff7f2f9)),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomArtworkImageWidget(
                  height: 80,
                  width: 80,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flower & a Frog", style: styleWithDeePurpleBold()),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By Hnin Cherry",
                        style: styleWithDeePurpleLighter(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Price-", style: styleWithSecondPurpleLarge()),
                          Expanded(
                              child: Text(" 50000 MMK",
                                  style: styleWithSecondPurpleLarge(),
                                  overflow: TextOverflow.ellipsis)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          customDivider(),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            title: Text(
              "Price",
              style: styleWithDeePurpleBold(),
            ),
            trailing: Text(
              price,
              style: styleWithGreyLarge(),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            title: Text(
              "Shipping",
              style: styleWithDeePurpleBold(),
            ),
            trailing: Text(shipping, style: styleWithGreyLarge()),
          ),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            title: Text("Tax*", style: styleWithDeePurpleBold()),
            trailing: Text(tax, style: styleWithGreyLarge()),
            subtitle: const Text("*View about tax rate"),
          ),
          customDivider(),
          Expanded(
            child: ListTile(
              title: Text(
                "Total",
                style: styleWithSecondPurpleLarge(),
              ),
              subtitle: Text(additional,overflow: TextOverflow.visible),
              trailing: Text(total, style: styleWithGreyLarge()),
            ),
          ),
        ],
      ),
    );
  }
}
