import 'package:flutter/material.dart';

import '../../widgets/custom_mobile_payment_card.dart';

class BankingAndCreditView extends StatelessWidget {
  const BankingAndCreditView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: const Color(0xfff7f2f9),
          borderRadius: BorderRadius.circular(4)),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "KBZ Banking",
            image: "assets/images/kbz_banking_icon.png",
            value: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "UAB Banking",
            image: "assets/images/uab_banking_icon.png",
            value: 2,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "AYA Banking",
            image: "assets/images/aya_banking_icon.png",
            value: 3,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "Credit/Debit Card",
            image: "assets/images/credit_card_icon.png",
            value: 4,
          ),
        ],
      ),
    );
  }
}
