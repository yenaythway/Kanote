import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market/pages/auction/viewitems/auction_view.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class AuctionListView extends StatelessWidget {
  const AuctionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const AuctionView();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: MARGIN_MEDIUM_2);
        },
      ),
    );
  }
}
