import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/pages/add_payment_information_page.dart';
import 'package:kanote_app/presentation/create_auction/widgets/create_auction_title_section_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/create_post_button_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';

class AddArtworkInformationPage extends StatelessWidget {
  const AddArtworkInformationPage({Key? key}) : super(key: key);

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
            stepNumber: "3",
            title: "Add artwork Information",
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
                label: "Medium ( Required )",
                isDropdown: true,
                dropdownList: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"],
                dropdownValue: "Item 1",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Materials",
                isDropdown: true,
                dropdownList: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"],
                dropdownValue: "Item 1",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              RadioButtonFieldSectionView(
                radioList: const ["cm", "in"],
                groupValue: "cm",
                onChanged: (value) {},
                title: "Dimensions",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const HeightWidthAndDepthFieldView(),
              const SizedBox(height: MARGIN_MEDIUM_2),
              RadioButtonFieldSectionView(
                radioList: const ["Yes", "No"],
                groupValue: "Yes",
                onChanged: (value) {},
                title: "Frame",
              ),
              const SizedBox(height: MARGIN_MEDIUM_3),
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
                        context.push(const AddPaymentInformationPage());
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

class HeightWidthAndDepthFieldView extends StatelessWidget {
  const HeightWidthAndDepthFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: LabelAndTextFieldView(
            label: "Height",
            hintText: "",
          ),
        ),
        SizedBox(width: MARGIN_CARD_MEDIUM_2),
        Expanded(
          child: LabelAndTextFieldView(
            label: "Width",
            hintText: "",
          ),
        ),
        SizedBox(width: MARGIN_CARD_MEDIUM_2),
        Expanded(
          child: LabelAndTextFieldView(
            label: "Depth",
            hintText: "",
          ),
        ),
      ],
    );
  }
}

class RadioButtonFieldSectionView extends StatelessWidget {
  final String groupValue;
  final List<String> radioList;
  final Function(String) onChanged;
  final String title;

  const RadioButtonFieldSectionView({super.key, 
    required this.groupValue,
    required this.radioList,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: knSubTitle().copyWith(
            fontWeight: FontWeight.w500,
            color: kDescriptionColor,
          ),
        ),
        const SizedBox(height: MARGIN_SMALL),
        Row(
          children: radioList.map((value) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 3,
              child: RadioListTile(
                value: value,
                groupValue: groupValue,
                contentPadding: EdgeInsets.zero,
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                activeColor: kPrimaryColor,
                title: Text(
                  value,
                ),
                onChanged: (value) {},
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
