import 'package:flutter/material.dart';

import '../../widgets/custom_mobile_payment_card.dart';

class MobilePaymentsView extends StatelessWidget {
  const MobilePaymentsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
          color: const Color(0xfff7f2f9),
          borderRadius: BorderRadius.circular(4)),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "AYA Pay",
            image: "assets/images/aya_image.png",
            value: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "KBZ Pay",
            image: "assets/images/kbz_icon.png",
            value: 2,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentMethodsCard(
            text: "Wave Pay",
            image: "assets/images/wave_icon.png",
            value: 3,
          )
        ],
      ),
    );
  }
}
