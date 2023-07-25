import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/order_cancelled_page.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../res/colors.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  bool isTapped = true;
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
          "Order Tracking",
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Your order number :",
                  style: styleWithDeePurpleLighter(),
                ),
                Text(
                  " Kanote999",
                  style: styleWithDeePurpleLighter(),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Order Confirmed Date : ",
                  style: styleWithDeePurpleLighter(),
                ),
                Text(
                  " 24th Mar, 2023",
                  style: styleWithDeePurpleLighter(),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/step_one_icon.png",
                        height: 44,
                      ),
                      Opacity(
                        opacity: isTapped ? 1 : 0.3,
                        child: Column(
                          children: [
                            SizedBox(
                                height: 80,
                                child: VerticalDivider(
                                  color: secondaryPurpleColor,
                                  width: 2,
                                )),
                            const CustomStepsNumbersWithDivider(
                              image: "assets/images/step_two_icon.png",
                            ),
                            const CustomStepsNumbersWithDivider(
                              image: "assets/images/step_three_icon.png",
                            ),
                            Image.asset("assets/images/step_four_icon.png")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTapped = !isTapped;
                              });
                            },
                            child: Image.asset(
                              isTapped
                                  ? "assets/images/order_pro_purple_icon.png"
                                  : "assets/images/order_processing_iocn.png",
                              height: 88,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          if (isTapped)
                            const OrderProcessingView()
                          else
                            const OrderFailedView(),
                        ],
                      ),
                      const SizedBox(
                        height: 44,
                      ),
                      Opacity(
                        opacity: isTapped ? 1 : 0.3,
                        child: const Column(
                          children: [
                            CustomOrderStepsRow(
                              text1: "Order Placed!",
                              text2: "Your order is placed successfully. ",
                              text3: "Estimated Date : ",
                              text4: "5 Days",
                              image: "assets/images/order_place_icon.png",
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            CustomOrderStepsRow(
                              text1: "On the Way!",
                              text2:
                                  "Your order is placed successfully. Our agent will soon deliver the products. ",
                              text3: "Estimated Date : ",
                              text4: "3 Days",
                              image: "assets/images/otw_icon.png",
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            CustomOrderStepsRow(
                              text1: "Product Delivered!",
                              text2:
                                  "Our agent will deliver your artwork on 24th July, 2023 at 11:00 am. ",
                              text3: " ",
                              text4: "",
                              image: "assets/images/product_delivered_icon.png",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: CustomLargeButton(
                  title: isTapped ? "Back To Home Screen" : "View Order Status",
                  function: () {
                    isTapped
                        ? Navigator.of(context)
                            .popUntil(ModalRoute.withName('/'))
                        : context.push(const OrderCancelledpage());
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}

class OrderProcessingView extends StatelessWidget {
  const OrderProcessingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Processing!",
            style: styleWithDeePurpleBold(),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "We are verifying the artwork that you purchased.",
            style: styleWithGreySmall(),
            overflow: TextOverflow.visible,
            maxLines: 3,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text("Estimated Date :", style: styleWithSendPurpleSmall()),
              Expanded(
                child: Text(
                  "7 Days",
                  style: styleWithSendPurpleSmall(),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class OrderFailedView extends StatelessWidget {
  const OrderFailedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Processing!",
            style: styleWithDeePurpleBold(),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Verification Failed!",
            style: styleWithGreySmall(),
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
            onTap: () {
              context.push(const OrderCancelledpage());
            },
            child: Container(
              height: 36,
              width: 120,
              color: const Color(0xffbd2627),
              child: Center(
                  child: Text(
                "Order Status",
                style: TextStyle(color: primaryColor),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomStepsNumbersWithDivider extends StatelessWidget {
  final String image;
  const CustomStepsNumbersWithDivider({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 44,
        ),
        SizedBox(
            height: 100,
            child: VerticalDivider(
              color: secondaryPurpleColor,
              width: 2,
            )),
      ],
    );
  }
}

class CustomOrderStepsRow extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image;
  const CustomOrderStepsRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          image,
          height: 88,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: styleWithDeePurpleBold(),
                overflow: TextOverflow.visible,
                maxLines: 3,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                text2,
                overflow: TextOverflow.visible,
                maxLines: 3,
                style: styleWithGreySmall(),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    text3,
                    style: styleWithSendPurpleSmall(),
                  ),
                  Expanded(
                    child: Text(
                      text4,
                      style: styleWithSendPurpleSmall(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
