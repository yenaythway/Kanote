import 'package:flutter/material.dart';

import '../../res/custom_textstyles.dart';

class PriceDetailView extends StatelessWidget {
  const PriceDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Price Details:",
            style: styleWithDeePurpleLighter(),
          ),
        ),
        ListTile(
          title: Text("Cart Total", style: styleWithDeePurpleLighter()),
          trailing: Text("15000MMK", style: styleWithGreyLarge()),
        ),
        ListTile(
          title: Text("Saving", style: styleWithDeePurpleLighter()),
          trailing: Text(
            "-MMK0",
            style: styleWithGreyLarge(),
          ),
        ),
        ListTile(
          title: Text("Final Price", style: styleWithDeePurpleLighter()),
          trailing: Text(
            "MMK 4,5000",
            style: styleWithSecondPurpleLarge(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
