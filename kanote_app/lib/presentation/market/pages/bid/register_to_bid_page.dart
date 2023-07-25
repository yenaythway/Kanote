import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/bid/add_billing_address_page.dart';
import 'package:kanote_app/presentation/market/pages/bid/add_credit_card_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/bid_art_image_view.dart';
import 'package:kanote_app/presentation/widgets/bid_art_title_and_time_view.dart';
import 'package:kanote_app/presentation/widgets/divider_with_horiz_margin.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';

class RegisterToBidPage extends StatelessWidget {
  const RegisterToBidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Register to bid",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BidArtImageView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const BidArtTitleAndTimeSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            const KNDescriptionSectionView(),
            const DividerWithMargin(),
            AddBillingView(
              title: "Add billing address",
              onTap: () {
                context.push(const AddBillingAddressPage());
              },
            ),
            const DividerWithMargin(),
            AddBillingView(
              title: "Credit Card",
              onTap: () {
                context.push(const AddCreditCardPage());
              },
            ),
            const DividerWithMargin(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            const AgreementSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            const CompleteRegisterButtonSectionView(),
          ],
        ),
      ),
    );
  }
}

class CompleteRegisterButtonSectionView extends StatelessWidget {
  const CompleteRegisterButtonSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: KnButtonView(
        label: "Complete Registration",
        onTap: () {},
        isDisable: true,
      ),
    );
  }
}

class AgreementSectionView extends StatelessWidget {
  const AgreementSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: kPrimaryColor),
            child: Checkbox(
              value: false,
              activeColor: kPrimaryColor,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: MARGIN_SMALL),
          Text(
            "Agree to Conditions of Sale",
            style: knNormalText().copyWith(color: kDescriptionColor),
          ),
        ],
      ),
    );
  }
}

class AddBillingView extends StatelessWidget {
  final String title;
  final Function onTap;

  const AddBillingView({super.key, 
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_CARD_MEDIUM_2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: knNormalText().copyWith(fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {
              onTap();
            },
            child: Text(
              "Add",
              style: knNormalText().copyWith(
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KNDescriptionSectionView extends StatelessWidget {
  const KNDescriptionSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Text(
        "To participate in this auction, you need to register as a bidder. Registration is free. But a valid credit card is required to bid. Don’t worry Kanote won’t charge from your card unless you win the auction.",
        style: knNormalText().copyWith(
          color: kDescriptionColor,
          height: 1.5,
        ),
      ),
    );
  }
}
