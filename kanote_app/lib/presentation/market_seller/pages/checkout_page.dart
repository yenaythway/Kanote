import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../view/checkout/adress_tab_view.dart';
import '../view/checkout/reviews_tab_view.dart';
import '../view/checkout/payment_tab_view.dart';

class CheckoutPage extends StatefulWidget {
  final int selectedTab;
  const CheckoutPage({super.key, required this.selectedTab});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
            "Checkout",
            style: TextStyle(
              color: greyColor,
            ),
          ),
          bottom: TabBar(
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              unselectedLabelColor: tabbarInactiveColor,
              labelColor: secondaryPurpleColor,
              labelStyle: const TextStyle(fontSize: 16),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
              isScrollable: false,
              indicatorColor: secondaryPurpleColor,
              tabs: [
                Tab(
                    child: Row(
                  children: [
                    const Text(
                      "Payment",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: selectedIndex == 0
                            ? secondaryPurpleColor
                            : tabbarInactiveColor,
                      ),
                    ),
                  ],
                )),
                Tab(
                  child: Row(
                    children: [
                      const Text(
                        "Address",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: selectedIndex == 1
                              ? secondaryPurpleColor
                              : tabbarInactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      const Text(
                        "Reviews",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: selectedIndex == 2
                              ? secondaryPurpleColor
                              : tabbarInactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        body: const TabBarView(
            children: [PaymentTabView(), AddressTabView(), ReviewsTabView()]),
      ),
    );
  }
}
