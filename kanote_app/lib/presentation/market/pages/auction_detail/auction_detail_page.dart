import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction_detail/viewitems/art_view.dart';
import 'package:kanote_app/presentation/market/pages/bid/bidding_activity_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/divider_with_horiz_margin.dart';
import 'package:kanote_app/presentation/widgets/expandable_description_view.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';

import 'viewitems/banner_view.dart';

class AuctionDetailPage extends StatelessWidget {
  const AuctionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: MARGIN_MEDIUM),
            child: ActionDetailOptionButtonView(),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BannerSectionView(),
                const SizedBox(height: MARGIN_MEDIUM_2),
                const ArtTitleAndTimeSectionView(),
                const DividerWithMargin(),
                DescriptionSectionView(),
                const DividerWithMargin(),
                const ArtworkValueSectionView(),
                const DividerWithMargin(),
                const ArtworkInfoSectionView(),
                const DividerWithMargin(),
                const ColorsUsedInArtworkSectionView(),
                const DividerWithMargin(),
                AboutArtistSectionView(),
                const DividerWithMargin(),
                const HorizontalArtListSectionView(
                  title: "Other works by Hnin Cherry",
                ),
                const DividerWithMargin(),
                const HorizontalArtListSectionView(
                  title: "Other artworks",
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: MARGIN_MEDIUM_2,
                vertical: MARGIN_MEDIUM_2,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, -1),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Staring Bid - 25000MMK",
                    style: knTitle().copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Bid increment- 5000ks per bid(at least)",
                    style: knSubTitle().copyWith(
                      color: kDescriptionColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: MARGIN_SMALL),
                  KnButtonView(
                    label: "Register to bid",
                    onTap: () {
                      // context.push(RegisterToBidPage());
                      context.push(const BiddingActivityPage());
                    },
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

class ActionDetailOptionButtonView extends StatelessWidget {
  const ActionDetailOptionButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      ),
      icon: Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (context) {
        return [
          getPopupMenuItem("Share", Icons.share),
          PopupMenuItem(
            enabled: false,
            padding: EdgeInsets.zero,
            height: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM),
              color: Color.fromRGBO(0, 0, 0, 0.1),
              height: 1,
            ),
          ),
          getPopupMenuItem("Copy Link", Icons.insert_link),
          PopupMenuItem(
            enabled: false,
            padding: EdgeInsets.zero,
            height: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM),
              color: Color.fromRGBO(0, 0, 0, 0.1),
              height: 1,
            ),
          ),
          getPopupMenuItem("Report", Icons.report_problem_outlined),
        ];
      },
    );
  }

  PopupMenuItem<int> getPopupMenuItem(String label, IconData iconData) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(
            iconData,
            color: Color.fromRGBO(0, 0, 0, 0.8),
            size: MARGIN_MEDIUM_3,
          ),
          SizedBox(width: MARGIN_CARD_MEDIUM_2),
          Text(
            label,
            style: knNormalText().copyWith(
              color: kDescriptionColor,
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalArtListSectionView extends StatelessWidget {
  final String title;

  const HorizontalArtListSectionView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: DetailPageTitleView(
            title: "Other works by Hnin Cherry",
          ),
        ),
        const SizedBox(height: MARGIN_CARD_MEDIUM_2),
        SizedBox(
          height: 280,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ArtView();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: MARGIN_CARD_MEDIUM_2);
            },
          ),
        ),
      ],
    );
  }
}

class AboutArtistSectionView extends StatelessWidget {
  String description = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dui bibendum, molestie lacus id, volutpat est. Fusce et lorem vitae nisi sollicitudin auctor a vel nisl. Integer aliquam accumsan elit, sit amet elementum felis rhoncus quis. Ut suscipit volutpat dictum. Nunc eget blandit turpis, ac luctus leo. Ut augue metus, dictum quis porttitor nec, gravida vitae augue. Etiam hendrerit feugiat malesuada. Pellentesque vel orci non leo euismod rhoncus quis in dui.
""";

  AboutArtistSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailPageTitleView(title: "About the artist"),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.network(
                    "https://e1.pxfuel.com/desktop-wallpaper/903/679/desktop-wallpaper-97-aesthetic-best-profile-pic-for-instagram-for-boy-instagram-dp-boys.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: MARGIN_MEDIUM),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delbin",
                        style: knNormalText().copyWith(
                          color: kPrimaryDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: MARGIN_SMALL),
                      Text(
                        "@delbinry123",
                        style: knTextSmall().copyWith(
                          color: kDescriptionColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  backgroundColor: kPrimaryColor,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: MARGIN_MEDIUM_2,
                    vertical: MARGIN_CARD_MEDIUM_2,
                  ),
                ),
                child: Text(
                  "Follow",
                  style: knNormalText().copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          ExpandableDescriptionView(description: description),
        ],
      ),
    );
  }
}

class ColorsUsedInArtworkSectionView extends StatelessWidget {
  const ColorsUsedInArtworkSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailPageTitleView(
            title: "Colors Used in the Artwork",
          ),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          Wrap(
            spacing: MARGIN_MEDIUM,
            children: const [
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
              ColorView(),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorView extends StatelessWidget {
  const ColorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: MARGIN_MEDIUM),
      width: 30,
      height: 30,
      color: const Color.fromRGBO(3, 182, 194, 1.0),
    );
  }
}

class ArtworkInfoSectionView extends StatelessWidget {
  const ArtworkInfoSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DetailPageTitleView(title: "Artwork's Infos"),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Medium",
            description: "Painting",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Materials",
            description: "Oil on cupboard",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Size",
            description: "40 4/5 x 19 1/5 in",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Frame",
            description: "Included",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Condition",
            description:
                "This artwork is offered in excellent and its original condition",
          ),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          InfoView(
            label: "Signature",
            description:
                "Hand-signed by an artist, Signed and dated on the lower right corner",
          ),
        ],
      ),
    );
  }
}

class InfoView extends StatelessWidget {
  final String label;
  final String description;

  const InfoView({super.key, required this.label, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 1.2 / 3,
          child: Text(
            label,
            style: knNormalText()
                .copyWith(color: const Color.fromRGBO(0, 0, 0, 0.7)),
          ),
        ),
        const SizedBox(width: MARGIN_MEDIUM),
        Expanded(
          child: Text(
            description,
            style: knNormalText()
                .copyWith(color: const Color.fromRGBO(0, 0, 0, 0.7)),
          ),
        ),
      ],
    );
  }
}

class ArtworkValueSectionView extends StatelessWidget {
  const ArtworkValueSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DetailPageTitleView(title: "Artwork's Value"),
          SizedBox(height: MARGIN_CARD_MEDIUM_2),
          TitleAndAmountView(
            title: "Estimated Value",
            value: "25000ks - 55000ks",
          ),
          SizedBox(height: MARGIN_MEDIUM),
          TitleAndAmountView(
            title: "Starting Bid Amount",
            value: "25000ks",
          ),
          SizedBox(height: MARGIN_MEDIUM),
          TitleAndAmountView(
            title: "Bid Increment per bid",
            value: "5000ks",
          ),
        ],
      ),
    );
  }
}

class TitleAndAmountView extends StatelessWidget {
  final String title;
  final String value;

  const TitleAndAmountView(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: knNormalText().copyWith(
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: MARGIN_SMALL),
        Text(
          value,
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class DescriptionSectionView extends StatelessWidget {
  String description = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vel dui bibendum, molestie lacus id, volutpat est. Fusce et lorem vitae nisi sollicitudin auctor a vel nisl. Integer aliquam accumsan elit, sit amet elementum felis rhoncus quis. Ut suscipit volutpat dictum. Nunc eget blandit turpis, ac luctus leo. Ut augue metus, dictum quis porttitor nec, gravida vitae augue. Etiam hendrerit feugiat malesuada. Pellentesque vel orci non leo euismod rhoncus quis in dui.
""";

  DescriptionSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: DetailPageTitleView(title: "Artwork description"),
        ),
        const SizedBox(height: MARGIN_CARD_MEDIUM_2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: ExpandableDescriptionView(description: description),
        ),
      ],
    );
  }
}

class DetailPageTitleView extends StatelessWidget {
  final String title;

  const DetailPageTitleView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: knSubTitle().copyWith(fontWeight: FontWeight.w400),
    );
  }
}

class ArtTitleAndTimeSectionView extends StatelessWidget {
  const ArtTitleAndTimeSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flower & Frog Mon",
            style: knTitle().copyWith(color: kPrimaryDarkColor),
          ),
          const SizedBox(height: MARGIN_MEDIUM),
          Text(
            "02d 00h 28m 38s",
            style: knNormalText().copyWith(color: kPrimaryColor),
          ),
          const SizedBox(height: MARGIN_MEDIUM),
          Text(
            "Bidding closes on Jan 31 at 8:00 AM + 6:30",
            style: knNormalText().copyWith(color: Colors.redAccent),
          ),
          const SizedBox(height: MARGIN_MEDIUM),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1559386484-97dfc0e15539?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Ym95c3xlbnwwfHwwfHw%3D&w=1000&q=80",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: MARGIN_SMALL),
                  Text(
                    "Delbin",
                    style: knText13()
                        .copyWith(color: const Color.fromRGBO(77, 77, 77, 1.0)),
                  ),
                ],
              ),
              Text(
                "Posted 5 days ago",
                style: knText13().copyWith(
                  color: const Color.fromRGBO(77, 77, 77, 1.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BannerSectionView extends StatefulWidget {
  const BannerSectionView({
    super.key,
  });

  @override
  State<BannerSectionView> createState() => _BannerSectionViewState();
}

class _BannerSectionViewState extends State<BannerSectionView> {
  int _position = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                _position = value;
              });
            },
            children: const [
              BannerView(),
              BannerView(),
              BannerView(),
              BannerView(),
              BannerView(),
            ],
          ),
        ),
        const SizedBox(height: MARGIN_CARD_MEDIUM_2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DotsIndicator(
              dotsCount: 5,
              position: _position,
              decorator: const DotsDecorator(
                spacing: EdgeInsets.all(2),
                color: Color.fromRGBO(217, 217, 217, 1.0),
                activeColor: kPrimaryColor,
              ),
            ),
            const SizedBox(width: MARGIN_MEDIUM),
            Text(
              "( ${_position + 1}/5 )",
              style: knTextSmall().copyWith(color: Colors.black87),
            ),
          ],
        ),
      ],
    );
  }
}
