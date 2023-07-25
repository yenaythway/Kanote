import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';

import '../resources/dimens.dart';
import '../widgets/create_post_title.dart';
import '../widgets/create_post_userinfo.dart';
import 'choose_layout_page.dart';

class PostReview extends StatelessWidget {
  const PostReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: "Create a community post"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: MARGIN_MEDIUM_2,
            ),
            CreatePostTitle(title: "Post Review"),
            const SizedBox(
              height: MARGIN_MEDIUM_2,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const UserInfo(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 33, 62, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(183, 169, 191, 1))),
                        hintText: "Hello My Name is Cherry.",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(145, 139, 148, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(246, 242, 249, 1),
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit your photos',
                                style: TextStyle(
                                    color: Color.fromRGBO(77, 77, 77, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Edit',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromRGBO(122, 13, 190, 1)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ClassicLayout(
                            isCreate: true,
                          )
                        ],
                      ),
                    )
                  ]),
            )),

            Container(
              padding: const EdgeInsets.symmetric(
                // horizontal: MARGIN_MEDIUM_2,
                vertical: MARGIN_MEDIUM_2,
              ),
              child: ElevatedButton(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      backgroundColor: const Color.fromRGBO(122, 13, 190, 1),
                      padding: const EdgeInsets.symmetric(
                        vertical: MARGIN_CARD_MEDIUM_2,
                        horizontal: MARGIN_CARD_MEDIUM_2,
                      ),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  child: const Text(
                    "Post on community",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  )),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
