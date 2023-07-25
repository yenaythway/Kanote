import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction/sort_filter_page.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

import 'viewitems/auction_list_view.dart';

class CurrentAuctionPage extends StatelessWidget {
  const CurrentAuctionPage({super.key});

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
          "Current Auctions",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: MARGIN_MEDIUM_2),
            child: InkWell(
              onTap: () {
                context.push(const SortAndFilterPage());
              },
              child: Row(
                children: [
                  Text(
                    "Sort by",
                    style: knNormalText(),
                  ),
                  const SizedBox(width: MARGIN_MEDIUM),
                  Image.asset(
                    "assets/images/sort.png",
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.only(top: MARGIN_CARD_MEDIUM_2),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const AuctionListView();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: MARGIN_CARD_MEDIUM_2);
          },
        ),
      ),
    );
  }
}
