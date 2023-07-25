import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction/auction_page.dart';
import 'package:kanote_app/presentation/market/viewitems/current_auction_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/auction_title_and_arrow_view.dart';
import '../market_seller/view/best_seller_lsit_view.dart';
import '../market_seller/view/latest_artwork_list_view.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MARGIN_MEDIUM_3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
              child: Text(
                "Market",
                style: knTitle().copyWith(
                  color: kPrimaryColor,
                ),
              ),
            ),
            BestSellerListView(),
            InterestedAuctionsSectionView(),
            SizedBox(height: MARGIN_MEDIUM_2),
            CurrentAuctionListSectionView(),
            LatestArtworkListView()
          ],
        ),
      ),
    );
  }
}

class CurrentAuctionListSectionView extends StatelessWidget {
  const CurrentAuctionListSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuctionTitleAndArrowView(title: "Current Auctions"),
        const SizedBox(height: MARGIN_MEDIUM_2),
        SizedBox(
          height: 300,
          // color: Colors.blue,
          child: PageView(
            children: const [
              CurrentAuctionView(),
              CurrentAuctionView(),
              CurrentAuctionView(),
              CurrentAuctionView(),
              CurrentAuctionView(),
            ],
          ),
        ),
      ],
    );
  }
}

class InterestedAuctionsSectionView extends StatelessWidget {
  const InterestedAuctionsSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(const AuctionPage());
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
          vertical: MARGIN_LARGE,
        ),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interested In Auctions",
                    style: knTitle().copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: MARGIN_MEDIUM),
                  Text(
                    "Participate in bidding activities with fellow friends",
                    style: knText13(),
                  ),
                ],
              ),
            ),
            const SizedBox(width: MARGIN_XXLARGE),
            Container(
              width: 40,
              height: 40,
              color: Colors.white,
              child: const Icon(
                Icons.arrow_forward_outlined,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
