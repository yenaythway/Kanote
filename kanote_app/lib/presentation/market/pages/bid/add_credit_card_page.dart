import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';

class AddCreditCardPage extends StatelessWidget {
  const AddCreditCardPage({Key? key}) : super(key: key);

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
          "Add Credit Card",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CardInformationFieldSectionView(),
          const SizedBox(height: MARGIN_CARD_MEDIUM_2),
          const ExpireDateAndCVVFieldSectionView(),
          const SizedBox(height: MARGIN_MEDIUM_2),
          const KnDescriptionSectionView(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: MARGIN_MEDIUM_2,
              right: MARGIN_MEDIUM_2,
              bottom: MARGIN_MEDIUM_2,
            ),
            child: KnButtonView(
              label: "Add credit card",
              onTap: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class KnDescriptionSectionView extends StatelessWidget {
  const KnDescriptionSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Text(
        "A credit card is required to bid. Kanote will never charge this card without your permission, and you are not required to use this card to pay if you win.",
        style: knTextSmall().copyWith(
          color: kDescriptionColor,
          height: 1.5,
        ),
      ),
    );
  }
}

class ExpireDateAndCVVFieldSectionView extends StatelessWidget {
  const ExpireDateAndCVVFieldSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Row(
        children: const [
          Expanded(
            child: LabelAndTextFieldView(
              label: "Expire Date",
              hintText: "MM/YY",
            ),
          ),
          SizedBox(width: MARGIN_CARD_MEDIUM_2),
          Expanded(
            child: LabelAndTextFieldView(
              label: "CVV",
              hintText: "CVV",
            ),
          ),
        ],
      ),
    );
  }
}

class CardInformationFieldSectionView extends StatelessWidget {
  const CardInformationFieldSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Card Information",
        hintText: "Card Number",
        suffixIcon: Icon(
          Icons.keyboard_alt_outlined,
          color: kDescriptionColor,
        ),
      ),
    );
  }
}
