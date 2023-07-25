import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/checkout_page.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_button_row.dart';

import '../res/colors.dart';
import '../view/payment/banking_and_credit_view.dart';
import '../view/payment/mobile_payment_view.dart';

enum PaymnetOption { cod, mp }

class PayTodayPage extends StatefulWidget {
  final int selectedTab;
  const PayTodayPage({super.key, required this.selectedTab});

  @override
  State<PayTodayPage> createState() => _PayTodayPageState();
}

class _PayTodayPageState extends State<PayTodayPage> {
  PaymnetOption? option = PaymnetOption.cod;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: widget.selectedTab,
      child: Scaffold(
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
            "Payment information",
            style: TextStyle(
              color: greyColor,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Choose Payment Method",
                style: styleWithSecondPurpleLarge(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "You can pay Qorem ipsum dolor sit amet,consectetur adipiscing elit. ",
                style: styleWithGreySmall(),
              ),
            ),
            SizedBox(
              height: 60,
              child: AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                bottom: TabBar(
                    unselectedLabelColor: tabbarInactiveColor,
                    labelColor: secondaryPurpleColor,
                    labelStyle: const TextStyle(fontSize: 16),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 10),
                    isScrollable: false,
                    indicatorColor: secondaryPurpleColor,
                    tabs: const [
                      Tab(
                          child: Text(
                        "Moble Payment",
                      )),
                      Tab(
                        child: Text(
                          "Banking & Credit",
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            MobilePaymentsView(),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 28),
                            child: CustomButtonRow(
                              function2: () {
                                context.push(const PayTodayPage(selectedTab: 1));
                              },
                              function1: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            BankingAndCreditView()
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 28),
                            child: CustomButtonRow(
                              function2: () {
                                context.push(const CheckoutPage(selectedTab: 1));
                              },
                              function1: () {
                                Navigator.pop(context);
                                const PayTodayPage(selectedTab: 0);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
