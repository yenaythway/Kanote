import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/pages/add_your_artwork_page.dart';
import 'package:kanote_app/presentation/create_auction/pages/choose_photo_page.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';
import 'package:kanote_app/presentation/widgets/label_and_text_field_view.dart';

class VerifiedArtistRegistrationPage extends StatelessWidget {
  const VerifiedArtistRegistrationPage({Key? key}) : super(key: key);

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
          "Verified-Artist Registration",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Column(
              children: [
                const SizedBox(height: MARGIN_MEDIUM_2),
                const LabelAndTextFieldView(
                  label: "Legal Name",
                  hintText: "Please fill in your name",
                  isRequiredField: true,
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                const LabelAndTextFieldView(
                  label: "Artist Kalong Name",
                  hintText: "Please fill in kalong name",
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                const LabelAndTextFieldView(
                  label: "Phone Number",
                  hintText: "Add your phone number",
                  isRequiredField: true,
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                const LabelAndTextFieldView(
                  label: "Address",
                  hintText: "Add your address",
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                const LabelAndTextFieldView(
                  label: "City",
                  hintText: "Add your city",
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                const LabelAndTextFieldView(
                  label: "Artist's Bio",
                  hintText:
                      "Tell me about your bio/ artist life to prove that you are a professional artist. eg. Which kind of art community that you participate and tell me ",
                  maxLine: 5,
                  minLine: 5,
                  isRequiredField: true,
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                LabelAndTextFieldView(
                  label: "Attach your file",
                  hintText: "",
                  isRequiredField: true,
                  isFileChooseField: true,
                  onChooseFile: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();
                    if (result != null) {
                      File file = File(result.files.single.path ?? "");
                      print("File is =====> ${file.path}");
                    }
                  },
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
                KnButtonView(
                  label: "Submit KYC Form",
                  onTap: () {
                    context.push(
                      ChoosePhotoPage(
                        title: "Create an auction post",
                        ontap: () {
                          context.push(AddYourArtworkPage());
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: MARGIN_MEDIUM_3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
