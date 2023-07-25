import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/choose_layout_page.dart';
import 'package:kanote_app/presentation/create_auction/pages/choose_photo_page.dart';
import 'package:kanote_app/presentation/create_auction/pages/verified_artist_registration_page.dart';

import 'add_your_artwork.dart';
import 'c_auction_post.dart';
import 'pages/s_add_your_artwork.dart';

class CreateAPost extends StatelessWidget {
  const CreateAPost({super.key});
  Widget _tile({required String title, required String image, required tap}) {
    return GestureDetector(
      onTap: () => Get.to(tap),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(246, 242, 249, 1),
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 110,
              width: 110,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: title, //,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(51, 33, 62, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "vgvjvbjhb  gklsbvksbvkls sivhsihvsihvsi sivhsihv hsighsi",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(77, 77, 77, 1))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create A Post",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(122, 13, 190, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                _tile(
                    image: "assets/images/community.png",
                    title: "Create a community post",
                    tap: ChoosePhotoPage(
                      title: "Create a community post",
                      ontap: () {
                        context.push(ChooseLayout());
                      },
                    )),
                SizedBox(
                  height: 20,
                ),
                _tile(
                    image: "assets/images/sale.png",
                    title: "Create a sale post",
                    tap: ChoosePhotoPage(
                      title: "Create a sale post",
                      ontap: () {
                        context.push(SAddYourArtwork());
                      },
                    )),
                SizedBox(
                  height: 20,
                ),
                _tile(
                  image: "assets/images/auction.png",
                  title: "Create an auction post",
                  tap: VerifiedArtistRegistrationPage(),
                ), //ChoosePhotoPage(flag: 3,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
