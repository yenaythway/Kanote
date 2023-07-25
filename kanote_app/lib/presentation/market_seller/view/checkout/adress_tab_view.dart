import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/checkout_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_button_row.dart';

import '../../widgets/custom_divider.dart';
import '../../widgets/cutom_cost_detail_widget.dart';
import 'address_info_filling_view.dart';

class AddressTabView extends StatelessWidget {
  const AddressTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AdrdessInfoFillingView(),
            customDivider(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomCostDetailWidget(
                price: "50000MMk",
                shipping: "Caculated in next step",
                tax: "Caculated in next step",
                total: "Waiting for final cost",
                additional: "*Additional duties and taxes may apply at import.",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButtonRow(
                function1: () {
                  Navigator.pop(context);
                  const CheckoutPage(selectedTab:0);
                },
                function2: () {
                  context.push(const CheckoutPage(selectedTab: 2));
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
