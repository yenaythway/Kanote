import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/post_tile/post_bottom.dart';
import 'package:kanote_app/presentation/create_auction/viewitems/photo_view.dart';

class DetailPhoto extends StatelessWidget {
  const DetailPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Color.fromRGBO(77, 77, 77, 1),
            child: Center(
              child: CarouselSlider(
                items: [
                  Image.asset(
                    "assets/images/post_image.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/post_image.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/post_image.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/post_image.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/post_image.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ],
                options: CarouselOptions(
                  // initialPage: 0,
                  // aspectRatio: 4,
                  viewportFraction: 1,
                  reverse: false,
                ),
                // child: Image.asset(
                //   "assets/images/post_image.png",
                //   width: MediaQuery.of(context).size.width,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          )),
          Post_bottom()
        ],
      ),
    );
  }
}
