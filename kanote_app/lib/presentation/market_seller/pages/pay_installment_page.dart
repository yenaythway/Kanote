import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';

import '../res/colors.dart';
import '../res/custom_textstyles.dart';
import '../widgets/custom_button_row.dart';

enum PaymnetPlans { twoMonths, threeMonths, sixMonths }

class PayInstallmentPage extends StatefulWidget {
  const PayInstallmentPage({super.key});

  @override
  State<PayInstallmentPage> createState() => _PayInstallmentPageState();
}

class _PayInstallmentPageState extends State<PayInstallmentPage> {
  PaymnetPlans? plan = PaymnetPlans.twoMonths;
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
          "Installment",
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const PickAPaymentView(),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                RadioListTile(
                  activeColor: secondaryPurpleColor,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('\$ 4500 per month',
                      style: styleWithDeePurpleBold()),
                  subtitle: Text("Over 2 months", style: styleWithGreyLarge()),
                  value: PaymnetPlans.twoMonths,
                  groupValue: plan,
                  onChanged: (PaymnetPlans? value) {
                    setState(() {
                      plan = value;
                    });
                  },
                ),
                RadioListTile(
                  activeColor: secondaryPurpleColor,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    '\$ 4500 per month',
                    style: styleWithDeePurpleBold(),
                  ),
                  subtitle: Text("Over 3 months", style: styleWithGreyLarge()),
                  value: PaymnetPlans.threeMonths,
                  groupValue: plan,
                  onChanged: (PaymnetPlans? value) {
                    setState(() {
                      plan = value;
                    });
                  },
                ),
                RadioListTile(
                  activeColor: secondaryPurpleColor,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('\$ 4500 per month',
                      style: styleWithDeePurpleBold()),
                  subtitle: Text(
                    "Over 6 months",
                    style: styleWithGreyLarge(),
                  ),
                  value: PaymnetPlans.sixMonths,
                  groupValue: plan,
                  onChanged: (PaymnetPlans? value) {
                    setState(() {
                      plan = value;
                    });
                  },
                ),
              ],
            ),
            customDivider(),
            ListTile(
              title: Row(
                children: [
                  Text(
                    "Total Payment",
                    style: styleWithDeePurpleBold(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    ":",
                    style: TextStyle(color: deepPurpleColor),
                  ),
                ],
              ),
              trailing: Text(
                "\$ 5000",
                style: styleWithSecondPurpleLarge(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xfff7f2f9),
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Artist's note", style: styleWithDeePurpleBold()),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please note that if you choose to use your username when bidding, your real name will not be displayed in the bidding session. Only your chosen username will be visible to other users.",
                        style: styleWithGreyLarge(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: secondaryPurpleColor)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "I obey Terms and Conditions",
                    style: styleWithGreyLarge(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButtonRow(
                function1: () {
                  Navigator.pop(context);
                },
                function2: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PickAPaymentView extends StatelessWidget {
  const PickAPaymentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pick a payment plan",
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
          Center(
            child: Container(
              height: 60,
              width: 260,
              decoration: BoxDecoration(
                  border: Border.all(color: secondaryPurpleColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Initial Payment  : ",
                    style: styleWithSecondPurpleLarge(),
                  ),
                  Text(
                    " \$ 1000 ",
                    style: styleWithSecondPurpleLarge(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
