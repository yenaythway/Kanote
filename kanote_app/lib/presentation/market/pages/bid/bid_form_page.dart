import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/dialogs/bid_dialog.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/bid_art_image_view.dart';
import 'package:kanote_app/presentation/widgets/bid_art_title_and_time_view.dart';
import 'package:kanote_app/presentation/widgets/divider_with_horiz_margin.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';
import 'package:kanote_app/presentation/widgets/ready_to_bid_button_section_view.dart';

class BidFormPage extends StatelessWidget {
  const BidFormPage({super.key});

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
          "Bid Form",
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
                BidArtImageView(),
                SizedBox(height: MARGIN_CARD_MEDIUM_2),
                BidArtTitleAndTimeSectionView(),
                DividerWithMargin(),
                BidFormSectionView(),
                SizedBox(height: 100),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ReadyToBidButtonSectionView(
              label: "Ready to bid",
              onTap: () {
                showBidDialog(context,"","");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BidFormSectionView extends StatelessWidget {
  const BidFormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: LabelAndTextFieldView(
            label: "Username",
            hintText: "Add your username",
            canSwitchUsername: true,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: LabelAndTextFieldView(
            label: "Bid Amount",
            hintText: "Add your bid amount",
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: LabelAndTextFieldView(
            label: "Message ( optional )",
            hintText: "Add your message......",
            maxLine: 5,
            minLine: 5,
          ),
        ),
      ],
    );
  }
}
