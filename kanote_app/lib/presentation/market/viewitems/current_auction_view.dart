import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction_detail/auction_detail_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class CurrentAuctionView extends StatelessWidget {
  const CurrentAuctionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: InkWell(
        onTap: () {
          context.push(const AuctionDetailPage());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageView(),
            const SizedBox(height: MARGIN_MEDIUM),
            Text(
              "LAMA: Prints & Multiples",
              maxLines: 1,
              style: knSubTitle().copyWith(
                color: Colors.black87,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: MARGIN_SMALL),
            Text(
              "By Hnin Cherry",
              style: knNormalText()
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            Text(
              "Bid starts from 100000 mmk",
              style: knSubTitle().copyWith(color: kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
          child: Image.network(
            "https://s32625.pcdn.co/wp-content/uploads/2017/05/what-is-abstract-art-kandinsky.jpg.optimal.jpg",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: MARGIN_SMALL,
          right: MARGIN_SMALL,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: MARGIN_SMALL,
              vertical: MARGIN_SMALL,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(122, 13, 190, 0.7),
              borderRadius: BorderRadius.circular(MARGIN_SMALL),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: MARGIN_MEDIUM_3,
                ),
                const SizedBox(width: MARGIN_SMALL),
                Text(
                  "Remaining: 02d 07h 28m 37s",
                  style: knTextSmall().copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
