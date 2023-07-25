import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/order_detail_page.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/pages/order_tracking_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../res/colors.dart';

class OrderSuccesspage extends StatelessWidget {
  const OrderSuccesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: const Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil(ModalRoute.withName('/'));
              },
              child: Image.asset(
                "assets/images/cancle_icon.png",
                width: 24,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/mdi_tick_decagram.png",
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hey Daniel Willams,",
                    style: styleWithDeePurpleLighter(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your Order is Confirmed!",
                    style: styleWithSecondPurpleLarge(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Order number : Kanote999",
                    style: styleWithDeePurpleLighter(),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "We’ll send you a shipping confirmation email as soon as your order ships.",
                    style: styleWithGreyLarge(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(const OrderDeatilPage());
                    },
                    child: Text(
                      "Show Details",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: secondaryPurpleColor,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: CustomLargeButton(
              title: "Track Your Order",
              function: () {
                context.push(const OrderTrackingPage());
              },
            )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
