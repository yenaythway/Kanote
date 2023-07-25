import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/pages/checkout_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_large_button.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

import '../../res/colors.dart';
import '../../view/cart/artwok_info_view.dart';
import '../../view/cart/price_detail_view.dart';

class CartListPage extends StatefulWidget {
  const CartListPage({super.key});

  @override
  State<CartListPage> createState() => _CartListPageState();
}

class _CartListPageState extends State<CartListPage> {
  bool isTapped = false;
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
          "Cart",
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder: (BuildContext context, int index) =>
                      customDivider(),
                  itemBuilder: (BuildContext context, int index) {
                    return const ArtworkInfoView();
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customDivider(),
                  const PriceDetailView(),
                  customDivider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped = !isTapped;
                          });
                        },
                        child: isTapped
                            ? Text(
                                "Discount Code",
                                style: styleWithDeePurpleBold(),
                              )
                            : Row(
                                children: [
                                  Image.asset(
                                    "assets/images/cupon_icon.png",
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Add a discount coupon*",
                                    style: styleWithGreyLarge(),
                                  ),
                                ],
                              )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (isTapped) const DiscountCodeFieldView(),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: CustomLargeButton(
              title: "Go to Checkout",
              function: () {
                context.push(const CheckoutPage(selectedTab: 0));
              },
            ),
          ),
        )
      ]),
    );
  }
}

class DiscountCodeFieldView extends StatelessWidget {
  const DiscountCodeFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 48,
            width: 240,
            decoration: BoxDecoration(
                color: const Color(0xfff7f2f9),
                borderRadius: BorderRadius.circular(2)),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "00-000-0000-0000",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: MARGIN_MEDIUM,),
          Expanded(
            child: Container(
              height: 48,
              width: 120,
              decoration: BoxDecoration(
                  color: secondaryPurpleColor,
                  borderRadius: BorderRadius.circular(2)),
              child: Center(
                  child: Text(
                "Apply",
                style: TextStyle(color: primaryColor, fontSize: 18),
              )),
            ),
          )
        ],
      ),
    );
  }
}
