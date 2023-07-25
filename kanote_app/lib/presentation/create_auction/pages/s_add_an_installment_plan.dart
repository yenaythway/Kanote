import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/create_auction/addartworkinfo.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';

import '../../resources/colors.dart';
import '../../resources/dimens.dart';
import '../../widgets/create_post_button_view.dart';
import '../../widgets/label_and_text_field_view.dart';
import 'add_artwork_information_page.dart';
import 's_installment_plan.dart';

class SAddAnInstallmentPlan extends StatelessWidget {
  const SAddAnInstallmentPlan({super.key});

  @override
  Widget build(BuildContext context) {
    bool selectAll = false;
    bool over2m = false;
    bool over4m = false;
    bool over6m = false;
    return Scaffold(
      appBar: Appbar(title: "Installment"),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Top(),
          CheckboxButton(value: false, ks: "12000", month: "2"),
          CheckboxButton(value: false, ks: "83000", month: "3"),
          CheckboxButton(value: false, ks: "41600", month: "6"),
          Padding(
            padding: const EdgeInsets.all(MARGIN_CARD_MEDIUM_2),
            child: LabelAndTextFieldView(
              label: "Artwork Note",
              hintText: "Add your note.",
              maxLine: 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(MARGIN_CARD_MEDIUM_2),
            child: Row(
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
                      ontap: () => Get.to(AddArtworkInformationPage())),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MARGIN_CARD_MEDIUM_2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Add an Installment Plan",
                style: TextStyle(
                    color: Color.fromRGBO(122, 13, 190, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            GestureDetector(
                onTap: () => Get.to(InstallmentPlan()),
                child: Image.asset(
                  "assets/images/cor.png",
                  height: 18,
                  width: 18,
                ))
            // IconButton(
            //     onPressed: () => Get.to(InstallmentPlan()),
            //     icon: Icon(Icons.abc))
          ],
        ),
        SizedBox(height: MARGIN_CARD_MEDIUM_2),
        LabelAndTextFieldView(
          label: "Artwork Price",
          hintText: "Add artwork price",
        ),
        SizedBox(height: MARGIN_CARD_MEDIUM_2),
        LabelAndTextFieldView(
          label: "Initial Payment",
          hintText: "Add initial payment",
        ),
        SizedBox(height: MARGIN_CARD_MEDIUM_2),
      ]),
    );
  }
}

class CheckboxButton extends StatelessWidget {
  bool value;
  String ks;
  String month;

  CheckboxButton(
      {super.key, required this.value, required this.ks, required this.month});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "${ks}ks ",
                style: TextStyle(
                    color: Color.fromRGBO(10, 2, 15, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                      text: "per month",
                      style: TextStyle(
                          color: Color.fromRGBO(77, 77, 77, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400))
                ]),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(122, 13, 190, 1),
                borderRadius: BorderRadius.circular(3)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text("Over ${month} months",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400)), //
            ),
          )
        ],
      ),
      value: value,
      onChanged: (bool? value) {},
      // controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
