import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/dropdown_form_style_view.dart';
import 'package:kanote_app/presentation/widgets/form_style_view.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';

class AddBillingAddressPage extends StatelessWidget {
  const AddBillingAddressPage({Key? key}) : super(key: key);

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
          "Add billing Address",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FullNameFieldSectionView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const NRCNumberInputSecitonView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const Address1FormSectionView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const Address2FormSectionView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const PhoneNumber1FormSectionView(),
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const PhoneNumber2FormSectionView(),
            const SizedBox(height: MARGIN_XLARGE),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
              child: KnButtonView(
                label: "Add billing address",
                onTap: () {},
              ),
            ),
            const SizedBox(height: MARGIN_MEDIUM_2),
          ],
        ),
      ),
    );
  }
}

class PhoneNumber2FormSectionView extends StatelessWidget {
  const PhoneNumber2FormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Phone number 2(optional)",
        hintText: "Add your phone number",
      ),
    );
  }
}

class PhoneNumber1FormSectionView extends StatelessWidget {
  const PhoneNumber1FormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Phone number 1",
        hintText: "Add your phone number",
      ),
    );
  }
}

class Address2FormSectionView extends StatelessWidget {
  const Address2FormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Address 2",
        hintText: "Add your address",
      ),
    );
  }
}

class Address1FormSectionView extends StatelessWidget {
  const Address1FormSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Address 1",
        hintText: "Add your address",
      ),
    );
  }
}

class NRCNumberInputSecitonView extends StatelessWidget {
  const NRCNumberInputSecitonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: Text(
            "NRC Number",
            style: knSubTitle().copyWith(
              fontWeight: FontWeight.w500,
              color: kDescriptionColor,
            ),
          ),
        ),
        const SizedBox(height: MARGIN_SMALL),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: Row(
            children: const [
              Expanded(
                flex: 2,
                child: FormStyleView(
                  hintText: "eg.12",
                ),
              ),
              SizedBox(width: MARGIN_MEDIUM),
              Expanded(
                flex: 3,
                child: DropdownFormStyleView(),
              ),
              SizedBox(width: MARGIN_MEDIUM),
              Expanded(
                flex: 2,
                child: FormStyleView(
                  hintText: "091284",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FullNameFieldSectionView extends StatelessWidget {
  const FullNameFieldSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: LabelAndTextFieldView(
        label: "Full Name",
        hintText: "Add your full name",
      ),
    );
  }
}
