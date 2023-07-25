import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market/pages/auction/viewitems/checkbox_list_tile_view.dart';
import 'package:kanote_app/presentation/market/pages/auction/viewitems/radio_list_tile_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/divider_with_horiz_margin.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';
import 'package:kanote_app/presentation/widgets/ready_to_bid_button_section_view.dart';

class SortAndFilterPage extends StatelessWidget {
  const SortAndFilterPage({super.key});

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
          "Sort & Filter",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                ExpansionRadioListTileView(
                  title: "Sort By",
                ),
                DividerWithMargin(
                  margin: MARGIN_CARD_MEDIUM_2,
                ),
                ExpansionRadioListTileView(
                  title: "Price/ Estimate Rate",
                ),
                DividerWithMargin(
                  margin: MARGIN_CARD_MEDIUM_2,
                ),
                ExpansionRadioListTileView(
                  title: "Time Periods",
                ),
                DividerWithMargin(
                  margin: MARGIN_CARD_MEDIUM_2,
                ),
                ExpansionCheckboxListTile(
                  title: "Materials",
                ),
                DividerWithMargin(margin: MARGIN_CARD_MEDIUM_2),
                ExpansionCheckboxListTile(
                  title: "Medium",
                ),
                DividerWithMargin(margin: MARGIN_CARD_MEDIUM_2),
                ExpansionCheckboxListTile(
                  title: "Size",
                ),
                DividerWithMargin(margin: MARGIN_CARD_MEDIUM_2),
                ExpansionRadioListTileView(
                  title: "Colors",
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ReadyToBidButtonSectionView(
              onTap: () {

              },
              label: "Apply This Filter",
              isShowShadow: false,
            ),
          ),
        ],
      ),
    );
  }
}

class ExpansionRadioListTileView extends StatelessWidget {
  final String title;

  const ExpansionRadioListTileView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        iconColor: kPrimaryColor,
        collapsedIconColor: kPrimaryColor,
        children: [
          const RadioListTileView(
            value: 1,
            groupValue: 1,
            title: "All",
          ),
          const RadioListTileView(
            value: 2,
            groupValue: 1,
            title: "Most Bid",
          ),
          const RadioListTileView(
            value: 3,
            groupValue: 1,
            title: "Least Bid",
          ),
          const RadioListTileView(
            value: 4,
            groupValue: 1,
            title: "Upcoming Auctions",
          ),
          const RadioListTileView(
            value: 5,
            groupValue: 1,
            title: "Current Auctions",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: KnButtonView(
              label: "Show Results",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ExpansionCheckboxListTile extends StatelessWidget {
  final String title;

  const ExpansionCheckboxListTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        iconColor: kPrimaryColor,
        collapsedIconColor: kPrimaryColor,
        children: [
          const CheckboxListTileView(
            title: "Paper",
          ),
          const CheckboxListTileView(
            title: "Paper",
          ),
          const CheckboxListTileView(
            title: "Paper",
          ),
          const CheckboxListTileView(
            title: "Paper",
          ),
          const CheckboxListTileView(
            title: "Paper",
          ),
          const CheckboxListTileView(
            title: "Paper",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: KnButtonView(
              label: "Show Results",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
