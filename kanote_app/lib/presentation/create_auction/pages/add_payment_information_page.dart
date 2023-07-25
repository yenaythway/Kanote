import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/pages/post_review_page.dart';
import 'package:kanote_app/presentation/create_auction/viewitems/mobile_banking_view.dart';
import 'package:kanote_app/presentation/create_auction/widgets/create_auction_title_section_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/create_post_button_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';

class AddPaymentInformationPage extends StatelessWidget {
  const AddPaymentInformationPage({Key? key}) : super(key: key);

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
          "Create a bid post",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: MARGIN_MEDIUM_2),
          const CreateAuctionTitleSectionView(
            stepNumber: "2",
            title: "Add your artwork ",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Text(
              "You can add any payment methods that you currently have. ",
              style: knText13().copyWith(
                color: kDescriptionColor,
              ),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_3),
          PaymentCategorySectionView(),
          RuleSectionView(),
          SizedBox(height: MARGIN_LARGE),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Row(
              children: [
                Expanded(
                  child: CreatePostButtonView(
                    label: "Go to back",
                    labelColor: Color.fromRGBO(107, 106, 106, 1.0),
                    backgroundColor: Colors.white,
                    borderColor: Color.fromRGBO(77, 77, 77, 1.0),
                    ontap: () {},
                  ),
                ),
                SizedBox(width: MARGIN_MEDIUM_3),
                Expanded(
                  child: CreatePostButtonView(
                    label: "Next",
                    labelColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    borderColor: Colors.transparent,
                    ontap: () {
                      context.push(PostReviewPage());
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
        ],
      ),
    );
  }
}

class RuleSectionView extends StatelessWidget {
  const RuleSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/rule.png",
            width: 15,
          ),
          SizedBox(width: MARGIN_SMALL),
          Expanded(
            child: Text(
              "Rules and regulations about delivery and payment process.",
              style: knText13().copyWith(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentCategorySectionView extends StatelessWidget {
  const PaymentCategorySectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBarTitleView(),
            SizedBox(height: MARGIN_MEDIUM_2),
            Expanded(
              child: TabBarView(
                children: [
                  MobileBankingTabBarView(),
                  CreditCardTabBarView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardTabBarView extends StatelessWidget {
  const CreditCardTabBarView({
    super.key,e
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: Column(
          children: [
            LabelAndTextFieldView(
              label: "Card Information",
              hintText: "Card number",
              suffixIcon: Icon(
                Icons.credit_card,
                color: Colors.black,
              ),
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            Row(
              children: [
                Expanded(
                  child: LabelAndTextFieldView(
                    label: "Expire Data",
                    hintText: "MM/YY",
                  ),
                ),
                SizedBox(width: MARGIN_MEDIUM_2),
                Expanded(
                  child: LabelAndTextFieldView(
                    label: "Cvv",
                    hintText: "cvv",
                  ),
                ),
              ],
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            RichText(
              text: TextSpan(
                text:
                    "Please make sure that your card is valid to receive cash whenever artworks got sold. By adding a card, you have read and agree to our ",
                style: knText13().copyWith(
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                  height: 1.3,
                ),
                children: [
                  TextSpan(
                    text: "terms and conditions.",
                    style: knText13().copyWith(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileBankingTabBarView extends StatelessWidget {
  const MobileBankingTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MARGIN_CARD_MEDIUM_2,
                vertical: MARGIN_LARGE,
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 242, 249, 1.0),
                borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
              ),
              child: Column(
                children: [
                  MobileBankingView(),
                  SizedBox(height: MARGIN_MEDIUM_3),
                  MobileBankingView(),
                  SizedBox(height: MARGIN_MEDIUM_3),
                  MobileBankingView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarTitleView extends StatelessWidget {
  const TabBarTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: TabBar(
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        labelColor: Colors.white,
        labelStyle: knSubTitle().copyWith(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: knSubTitle().copyWith(
          fontWeight: FontWeight.w500,
        ),
        labelPadding: EdgeInsets.symmetric(vertical: MARGIN_MEDIUM_2),
        tabs: [
          Text(
            "Mobile Banking",
          ),
          Text(
            "Credit Card",
          ),
        ],
      ),
    );
  }
}
