import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/market_seller/pages/artworks_detail_page.dart';

import 'inbox_page.dart';

class ConfirmToMkexp extends StatelessWidget {
  const ConfirmToMkexp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(children: [
            Column(
              children: [
                Image.asset("assets/images/mkexp.png"),
                Expanded(
                    child: SizedBox(
                  height: 1,
                )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          backgroundColor: Color.fromRGBO(122, 13, 190, 1),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 50)),
                      onPressed: () => Get.to(Conversation(
                            friendName: "Market Expert",
                            myImage: 'assets/images/profile_image.png',
                            otherImage: "assets/images/marketexpert.png",
                            isMarketExpert: true,
                          )),
                      child: Text(
                        "Chat with Art-market Expert",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )),
                )
              ],
            ),
            Positioned(
              top: -5,
              right: -15,
              child: IconButton(
                  iconSize: 30,
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
