import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction/current_auction_page.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class AuctionTitleAndArrowView extends StatelessWidget {

  final String title;


  const AuctionTitleAndArrowView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: InkWell(
        onTap: () {
          context.push(const CurrentAuctionPage());
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: knTitle(),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}