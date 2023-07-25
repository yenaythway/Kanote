import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction/sort_filter_page.dart';
import 'package:kanote_app/presentation/market/pages/auction/viewitems/auction_list_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/auction_title_and_arrow_view.dart';

class AuctionPage extends StatelessWidget {
  const AuctionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSectionView(),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          const SearchSectionView(),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  TitleAndHorizontalArtView(
                    title: "Current Auctions",
                  ),
                  SizedBox(height: MARGIN_MEDIUM),
                  TitleAndHorizontalArtView(
                    title: "Upcoming Auctions",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleAndHorizontalArtView extends StatelessWidget {

  final String title;


  const TitleAndHorizontalArtView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuctionTitleAndArrowView(
          title: title,
        ),
        const SizedBox(height: MARGIN_MEDIUM),
        const AuctionListView(),
      ],
    );
  }
}

class SearchSectionView extends StatelessWidget {
  const SearchSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(234, 234, 234, 1.0),
            ),
            borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(234, 234, 234, 1.0),
            ),
            borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
          ),
          filled: true,
          fillColor: const Color.fromRGBO(248, 248, 248, 1.0),
          hintText: "Find various auctions...",
          hintStyle: knNormalText().copyWith(
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            // size: MARGIN_LARGE,
          ),
          contentPadding: EdgeInsets.zero,
          suffixIcon: GestureDetector(
            onTap: () {
              context.push(const SortAndFilterPage());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(MARGIN_MEDIUM),
                  bottomRight: Radius.circular(MARGIN_MEDIUM),
                ),
              ),
              child: Image.asset(
                "assets/images/filter_icon.png",
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSectionView extends StatelessWidget {
  const TitleSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Text(
        "Auctions",
        style: knTitle().copyWith(
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
