import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class BidArtTitleAndTimeSectionView extends StatelessWidget {
  const BidArtTitleAndTimeSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Cabin Fevers",
                  style: knTitle().copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                "02d 00h 28m 38s",
                style: knNormalText().copyWith(
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: MARGIN_SMALL),
          Text(
            "Bidding closes on Jan 31 at 8:00 AM + 6:30",
            style: knNormalText().copyWith(color: Colors.redAccent),
          ),
        ],
      ),
    );
  }
}