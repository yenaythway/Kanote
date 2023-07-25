import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/pages/add_artwork_information_page.dart';
import 'package:kanote_app/presentation/create_auction/widgets/create_auction_title_section_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/viewmodels/create/create_auction/add_your_artwork_provider.dart';
import 'package:kanote_app/presentation/widgets/create_post_button_view.dart';
import 'package:kanote_app/presentation/widgets/date_form_field_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';
import 'package:kanote_app/presentation/widgets/overlay_for_signature.dart';
import 'package:painter/painter.dart';

class AddYourArtworkPage extends StatelessWidget {
  const AddYourArtworkPage({super.key});

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
          "Create an auction post",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: MARGIN_MEDIUM_2),
          CreateAuctionTitleSectionView(
            stepNumber: "2",
            title: "Add your artwork ",
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Expanded(
            child: FormSectionView(),
          ),
        ],
      ),
    );
  }
}

class FormSectionView extends StatelessWidget {
  const FormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      radius: const Radius.circular(MARGIN_MEDIUM_2),
      thumbColor: const Color.fromRGBO(162, 126, 192, 1.0),
      trackColor: Colors.black,
      trackVisibility: true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelAndTextFieldView(
                label: "Artwork Title",
                hintText: "Add artwork title",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Start Bid Amount ( Ground Price )",
                hintText: "200000ks",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Start Bid Amount ( at least )",
                hintText: "Add bid increment",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndDateTimeFieldView(),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Artwork description",
                hintText: "Add your artwork description",
              ),
              SizedBox(height: MARGIN_MEDIUM_2),
              ArtworkSignatureFieldView(),
              SizedBox(height: MARGIN_XLARGE),
              Row(
                children: [
                  Expanded(
                    child: CreatePostButtonView(
                      label: "Go to back",
                      labelColor: const Color.fromRGBO(107, 106, 106, 1.0),
                      backgroundColor: Colors.white,
                      borderColor: const Color.fromRGBO(77, 77, 77, 1.0),
                      ontap: () {},
                    ),
                  ),
                  const SizedBox(width: MARGIN_MEDIUM_3),
                  Expanded(
                    child: CreatePostButtonView(
                      label: "Next",
                      labelColor: Colors.white,
                      backgroundColor: kPrimaryColor,
                      borderColor: Colors.transparent,
                      ontap: () {
                        context.push(const AddArtworkInformationPage());
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
            ],
          ),
        ),
      ),
    );
  }
}

class ArtworkSignatureFieldView extends ConsumerStatefulWidget {
  const ArtworkSignatureFieldView({
    super.key,
  });

  @override
  _ArtworkSignatureFieldViewState createState() =>
      _ArtworkSignatureFieldViewState();
}

class _ArtworkSignatureFieldViewState
    extends ConsumerState<ArtworkSignatureFieldView> {
  bool finished = false;
  PainterController _controller = PainterController()
    ..thickness = 5.0
    ..backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    Uint8List? image =
        ref.watch(addYourArtworkProvider.select((bloc) => bloc.image));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Artwork Signature",
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w500,
            color: kDescriptionColor,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        GestureDetector(
          onTap: () {
            insertOverlayForSignature(context, ref);
          },
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MARGIN_SMALL),
              border: Border.all(
                color: kHintTextColor,
              ),
            ),
            child: image == null
                ? null
                : Image.memory(
                  image,
                  fit: BoxFit.contain,
                ),
          ),
        )
      ],
    );
  }
}

class LabelAndDateTimeFieldView extends StatelessWidget {
  const LabelAndDateTimeFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Auction Periods",
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w500,
            color: kDescriptionColor,
          ),
        ),
        const SizedBox(height: MARGIN_MEDIUM),
        const DateAndTimeFieldView(
          dateHintText: "Start Date",
          timeHintText: "Open Time",
        ),
        const SizedBox(height: MARGIN_MEDIUM_2),
        const DateAndTimeFieldView(
          dateHintText: "End Date",
          timeHintText: "Close Time",
        ),
      ],
    );
  }
}

class DateAndTimeFieldView extends StatelessWidget {
  final String dateHintText;
  final String timeHintText;

  const DateAndTimeFieldView({
    super.key,
    required this.dateHintText,
    required this.timeHintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DateFormFieldView(
            hintText: dateHintText,
            suffixIcon: const Icon(
              Icons.calendar_month,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            onDateSelected: (dateTime) {},
          ),
        ),
        const SizedBox(width: MARGIN_CARD_MEDIUM_2),
        Expanded(
          child: DateFormFieldView(
            hintText: timeHintText,
            isDate: false,
            suffixIcon: const Icon(
              Icons.access_time_outlined,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            onDateSelected: (dateTime) {},
          ),
        ),
      ],
    );
  }
}
