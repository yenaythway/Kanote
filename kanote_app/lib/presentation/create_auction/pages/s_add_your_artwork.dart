import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';

import '../../resources/colors.dart';
import '../../resources/dimens.dart';
import '../../resources/font_manager.dart';
import '../../widgets/create_post_button_view.dart';
import '../../widgets/create_post_title.dart';
import '../../widgets/label_and_text_field_view.dart';
import 'add_artwork_information_page.dart';
import 'choose_photo_page.dart';
import 's_add_an_installment_plan.dart';
import 's_add_artwork_information.dart';

class SAddYourArtwork extends StatelessWidget {
  const SAddYourArtwork({super.key});

  @override
  Widget build(BuildContext context) {
    bool install = false;
    return Scaffold(
      appBar: Appbar(title: "Create a sale post"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MARGIN_MEDIUM_2),
          child: Column(
            //all tile padding MARGIN_MEDIUM_2
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              S_Title(num: 1, title: "Add your artwork"),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Artwork Title",
                hintText: "Add artwork title",
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Artwork Price",
                hintText: "Add artwork price",
              ),
              const SizedBox(height: MARGIN_MEDIUM),
              const Text(
                "Can’t define your artwork price ? Contact with our market experts in the chatbox.",
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              const LabelAndTextFieldView(
                label: "Artwork description",
                hintText: "Add artwork infos",
                maxLine: 3,
              ), //
              const SizedBox(height: MARGIN_MEDIUM),
              const Text(
                "Be sure to include an artwork description, cuz it helps you to get more engagement & revenue stream.",
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
              // RadioButtonExample(),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Would you like to allow payment with installment?",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 33, 62, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  Radio(
                      value: true,
                      groupValue: install,
                      onChanged: (value) => Get.to(SAddAnInstallmentPlan()))
                ],
              ),
              const SizedBox(height: MARGIN_MEDIUM_2),
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
                        ontap: () => Get.to(S_AddArtworkInformationPage())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class S_Title extends StatelessWidget {
  int num;
  String title;
  S_Title({super.key, required this.num, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Step ${num} of 4",
          style: knNormalText().copyWith(
            color: const Color.fromRGBO(107, 107, 107, 1.0),
          ),
        ),
        const SizedBox(height: MARGIN_MEDIUM),
        CreatePostTitle(title: title),
      ],
    );
  }
}
