import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../res/colors.dart';

class OrderCancelledpage extends StatelessWidget {
  const OrderCancelledpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil(ModalRoute.withName('/'));
              },
              child: Image.asset(
                "assets/images/cancle_icon.png",
                width: 20,
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
                    "assets/images/order_cancelled_icon.png",
                    height: 80,
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
                  const Text(
                    "Your Order is cancelled!",
                    style: TextStyle(
                        color: Color(0xffbd2627),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
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
                    "We are sorry to disappoint you that the order that you purchased has failed in the verification process. Don’t worry we will transfer your money back in within a day!",
                    style: styleWithGreyLarge(),
                  ),
                ],
              ),
            ),
            Expanded(
                child: CustomLargeButton(
              title: "Back To Home Screen",
              function: () {
                Navigator.of(context).popUntil(ModalRoute.withName('/'));
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
