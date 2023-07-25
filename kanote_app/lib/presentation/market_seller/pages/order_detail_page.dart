import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../res/colors.dart';
import 'order_tracking_page.dart';

class OrderDeatilPage extends StatelessWidget {
  const OrderDeatilPage({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  "https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFydHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order #KN569120",
                    style: styleWithSecondPurpleLarge(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Purchasedon 15 May 2023, 12:46pm",
                      style: styleWithGreySmall()),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Artwork Name :",
                        style: styleWithDeePurpleLighter(),
                      ),
                      Text(
                        "Flower and a frog",
                        style: styleWithDeePurpleLighter(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Artist Name :",
                        style: styleWithDeePurpleLighter(),
                      ),
                      Text(
                        " Hnin Cherry",
                        style: styleWithDeePurpleLighter(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Artwork Price :",
                        style: styleWithDeePurpleLighter(),
                      ),
                      Text(
                        " 15000MMK",
                        style: styleWithDeePurpleLighter(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            customDivider(),
            ListTile(
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
              title: Text(
                "Subtotal",
                style: styleWithDeePurpleLighter(),
              ),
              trailing: Text("1,5000MMK", style: styleWithDeePurpleLighter()),
            ),
            ListTile(
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
              title: Text(
                "Copyriht fee(10%)",
                style: styleWithDeePurpleLighter(),
              ),
              trailing: Text("1,5000MMK", style: styleWithDeePurpleLighter()),
            ),
            ListTile(
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
              title: Text(
                "Delivery fee",
                style: styleWithDeePurpleLighter(),
              ),
              trailing: Text("1,5000MMK", style: styleWithDeePurpleLighter()),
            ),
            ListTile(
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
              title: Text(
                "Total (incl. tax)",
                style: styleWithSecondPurpleLarge(),
              ),
              trailing: Text("1,5000MMK", style: styleWithSecondPurpleLarge()),
            ),
            customDivider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Paid With",
                style: styleWithGreySmall(),
              ),
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: Image.asset(
                "assets/images/kbz_icon.png",
                height: 28,
              ),
              title: Text(
                "KBZ pay",
                style: styleWithDeePurpleLighter(),
              ),
              trailing: Text("1,5000MMK", style: styleWithSendPurpleSmall()),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: CustomLargeButton(
                title: "Track Your Order",
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderTrackingPage()));
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
