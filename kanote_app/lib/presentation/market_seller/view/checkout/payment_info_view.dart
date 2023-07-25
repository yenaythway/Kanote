import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';

import '../../res/custom_textstyles.dart';

class PaymentInfoView extends StatelessWidget {
  const PaymentInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(color: Color(0xfff7f2f9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Payment Information",
              style: styleWithDeePurpleBold(),
            ),
            trailing: Text(
              "Edit",
              style: styleWithSendPurpleSmall(),
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/aya_image.png",
              height: 40,
            ),
            title: Text(
              "AYA Pay",
              style: styleWithGreyLarge(),
            ),
            trailing: Text(
              "34000 Ks",
              style: styleWithDeePurpleBold(),
            ),
          ),
          customDivider(),
          ListTile(
            title: Text(
              "Payment With Installment",
              style: styleWithDeePurpleBold(),
            ),
            trailing: Text(
              "Edit",
              style: styleWithSendPurpleSmall(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Artwork Price :",
                  style: styleWithDeePurpleLighter(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "500000Kyats",
                  style: styleWithGreySmall(),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Initial Payment :",
                  style: styleWithDeePurpleLighter(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "250000Kyats",
                  style: styleWithGreySmall(),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Selected installment plans :",
                  style: styleWithDeePurpleLighter(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "12000ks",
                      style: styleWithDeePurpleBold(),
                    ),
                    Text(
                      " per month",
                      style: styleWithGreyLarge(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 26,
                  width: 120,
                  decoration: BoxDecoration(
                      color: secondaryPurpleColor,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                    "Over 2 months",
                    style: TextStyle(color: primaryColor),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Artist's note :",
                  style: styleWithDeePurpleLighter(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: dividerColor),
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                    "Corem insum dolor sit amet. consectetur adipiscing elit. NUnc vulputate libero et vellt interdum. ac aliquet odio mattis. Classaptent tacit socioseu aa litora ewrew w gan dede agni a na ragadrna lar nagarn a anga",
                    style: styleWithGreySmall(),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
