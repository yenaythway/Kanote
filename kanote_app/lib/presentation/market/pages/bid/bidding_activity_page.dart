import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/bid/bid_form_page.dart';
import 'package:kanote_app/presentation/market/pages/bid/viewitems/bid_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/divider_with_horiz_margin.dart';
import 'package:kanote_app/presentation/widgets/ready_to_bid_button_section_view.dart';

class BiddingActivityPage extends StatelessWidget {
  const BiddingActivityPage({Key? key}) : super(key: key);

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
          "Binding Activity",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SummaryTitleSectionView(),
                      SizedBox(height: MARGIN_MEDIUM_2),
                      SummarySectionView(),
                      SizedBox(height: MARGIN_CARD_MEDIUM_2),
                      DividerWithMargin(),
                      SizedBox(height: MARGIN_MEDIUM),
                      YourPositionSectionView(),
                    ],
                  ),
                ),
              ];
            },
            body: Column(
              children: [
                SizedBox(height: MARGIN_MEDIUM_2),
                MostRecentBidsSectionView(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ReadyToBidButtonSectionView(
              label: "Ready to bid",
              onTap: () {
                context.push(const BidFormPage());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class YourPositionSectionView extends StatelessWidget {
  const YourPositionSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_CARD_MEDIUM_2,
        vertical: MARGIN_MEDIUM,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 242, 249, 1.0),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "You are at the 10th position.",
              style: knNormalText().copyWith(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: MARGIN_MEDIUM),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: MARGIN_CARD_MEDIUM_2,
              ),
            ),
            child: Row(
              children: [
                Text(
                  "View",
                  style: knText13().copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: MARGIN_MEDIUM),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: MARGIN_MEDIUM_3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MostRecentBidsSectionView extends StatelessWidget {
  const MostRecentBidsSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Text(
              "Most Recent Bids",
              style: knTitle().copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          const TableHeaderView(),
          const DividerWithMargin(
            color: kPrimaryColor,
            margin: MARGIN_MEDIUM_2,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(
                left: MARGIN_MEDIUM_2,
                right: MARGIN_MEDIUM_2,
                bottom: 100,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return BidView(index: index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Column(
                  children: const [
                    SizedBox(height: MARGIN_MEDIUM),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: MARGIN_MEDIUM),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TableHeaderView extends StatelessWidget {
  const TableHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Row(
        children: const [
          TableHeaderTextView(
            flex: 1,
            label: "No.",
          ),
          SizedBox(width: MARGIN_MEDIUM),
          TableHeaderTextView(
            flex: 5,
            label: "Bidder ID",
          ),
          SizedBox(width: MARGIN_MEDIUM),
          TableHeaderTextView(
            flex: 3,
            label: "Amount",
            isAmount: true,
          ),
        ],
      ),
    );
  }
}

class TableHeaderTextView extends StatelessWidget {
  final int flex;
  final String label;
  final bool isAmount;

  const TableHeaderTextView(
      {super.key,
      required this.flex,
      required this.label,
      this.isAmount = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Text(
        label,
        textAlign: isAmount ? TextAlign.right : TextAlign.left,
        style: knNormalText().copyWith(),
      ),
    );
  }
}

class SummarySectionView extends StatelessWidget {
  const SummarySectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        children: const [
          SummaryTitleAndValueView(
            title: "Artwork name",
            value: "Cabin Fevers",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          SummaryTitleAndValueView(
            title: "Times left for bidding",
            value: "02d 00h 28m 38s",
            dateTime: "Jan 31st, 9:30 PM + 06:30",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          SummaryTitleAndValueView(
            title: "Bidders",
            value: "15",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          SummaryTitleAndValueView(
            title: "Highest bidder",
            value: "D****n503",
          ),
        ],
      ),
    );
  }
}

class SummaryTitleAndValueView extends StatelessWidget {
  final String title;
  final String value;
  final String? dateTime;

  const SummaryTitleAndValueView({
    super.key,
    required this.title,
    required this.value,
    this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 1.2 / 3,
          child: Text(
            title,
            style: knNormalText().copyWith(
              color: kDescriptionColor,
            ),
          ),
        ),
        const SizedBox(width: MARGIN_MEDIUM_2),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: knNormalText().copyWith(color: kDescriptionColor),
              ),
              Visibility(
                visible: dateTime != null,
                child: Text(
                  dateTime ?? "",
                  style: knText13().copyWith(color: kDescriptionColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SummaryTitleSectionView extends StatelessWidget {
  const SummaryTitleSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Text(
        "Summary",
        style: knTitle().copyWith(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
