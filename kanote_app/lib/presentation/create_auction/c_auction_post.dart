import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/create_auction/pages/choose_photo_page.dart';

import '../widgets/create_post_appbar.dart';
import 'add_your_artwork.dart';

class CAuctionPost extends StatelessWidget {
  const CAuctionPost({super.key});
  Widget _tfield({required title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(183, 169, 191, 1))),
          hintText: title,
          hintStyle: TextStyle(
              color: Color.fromRGBO(145, 139, 148, 1),
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _title({required String title, required bool flag}) {
    return RichText(
      text: TextSpan(
        text: title,
        children: [
          flag
              ? TextSpan(
                  text: '*',
                  style: TextStyle(color: Color.fromRGBO(189, 38, 38, 1)))
              : TextSpan(text: '')
        ],
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(51, 33, 62, 1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: "Verified-Artist Registration"),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(title: "Legal Name", flag: true),
            _tfield(title: "Please fill in your name"),
            _title(title: "Artist Kalong Name", flag: false),
            _tfield(title: "Please fill in your name"),
            _title(title: "Phone number", flag: true),
            _tfield(title: "Add your phone number"),
            _title(title: "Address ", flag: false),
            _tfield(title: "Add your adress"),
            _title(title: "City", flag: false),
            _tfield(title: "Add your city"),
            _title(title: "Artist’s Bio", flag: true),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20),
              child: TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(183, 169, 191, 1))),
                  hintText:
                      "Tell me about your bio/ artist life to prove that you are a professional artist. eg. Which kind of art community that you participate and tell me ",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(145, 139, 148, 1),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            _title(title: "Attach your file", flag: true),
            GestureDetector(
              onTap: () => Get.to(
                ChoosePhotoPage(
                  title: "Create an auction post",
                  ontap: () {},
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.purple[800]),
                child: Center(
                    child: Text(
                  'For Sale',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
