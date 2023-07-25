// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/checkout_page.dart';
import 'package:kanote_app/presentation/market_seller/pages/pay_installment_page.dart';
import 'package:kanote_app/presentation/market_seller/pages/pay_today_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_button_row.dart';

import '../../res/custom_textstyles.dart';

class PaymentTabView extends StatelessWidget {
  const PaymentTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Options",
                    style: styleWithSecondPurpleLarge(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You can pay Qorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: styleWithGreyLarge(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(const PayTodayPage(
                        selectedTab: 0,
                      ));
                    },
                    child: const CustomPaymentOptionCard(
                      image: "assets/images/payment_icon.png",
                      title: "Pay Today",
                      subtitle: "100000 ks on banking or credit",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(const PayInstallmentPage());
                    },
                    child: const CustomPaymentOptionCard(
                      image: "assets/images/second_payment_icon.png",
                      title: "Pay With Installment",
                      subtitle: "Pay As low as 50000ks per month",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButtonRow(
                function1: () {
                  Navigator.pop(context);
                },
                function2: () {
                  context.push(const CheckoutPage(selectedTab: 1));
                },
              ),
            ))
      ],
    );
  }
}

class CustomPaymentOptionCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const CustomPaymentOptionCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xffdddddd), width: 2),
      ),
      child: Center(
          child: ListTile(
        leading: Image.asset(
          image,
          height: 40,
        ),
        title: Text(
          title,
          style: styleWithDeePurpleLighter(),
        ),
        subtitle: Text(subtitle),
      )),
    );
  }
}
