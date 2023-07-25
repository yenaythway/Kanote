import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/order_sucess_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';

import '../../res/custom_textstyles.dart';
import '../../widgets/cutom_cost_detail_widget.dart';
import 'adress_detail_view.dart';
import 'payment_info_view.dart';

class ReviewsTabView extends StatelessWidget {
  const ReviewsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Reviews",
              style: styleWithSecondPurpleLarge(),
            ),
            const SizedBox(
              height: 20,
            ),
            const AdressInfoDetailView(),
            const SizedBox(
              height: 20,
            ),
            const PaymentInfoView(),
            const SizedBox(
              height: 20,
            ),
            const CustomCostDetailWidget(
              price: "50000MMk",
              shipping: "3000MMk",
              tax: "5000MMk",
              total: "60000MMk",
              additional: "",
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomLargeButton(
                  title: "Place Order",
                  function: () {
                    context.push(const OrderSuccesspage());
                  }),
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
