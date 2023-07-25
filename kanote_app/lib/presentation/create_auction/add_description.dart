import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/widgets/create_bot_button.dart';
import 'package:kanote_app/presentation/widgets/create_post_title.dart';
import 'package:kanote_app/presentation/widgets/create_post_userinfo.dart';

import '../resources/dimens.dart';
import '../resources/font_manager.dart';
import '../widgets/create_post_appbar.dart';
import 'choose_layout_page.dart';
import 'post_review.dart';

class AddDescription extends StatelessWidget {
  const AddDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: 'Create a community post'),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Text('Step 3 of 3',
                  style: knNormalText().copyWith(
                      color: const Color.fromRGBO(107, 107, 107, 1.0))),
              const SizedBox(height: MARGIN_MEDIUM),
              CreatePostTitle(title: "Add a description"),
              const SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserInfo(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                              color: Color.fromRGBO(51, 33, 62, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          maxLines: 7,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(183, 169, 191, 1))),
                            hintText: "Add your message.....",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(145, 139, 148, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ClassicLayout(
                          isCreate: true,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Next(next: PostReview())
              // Text(
              //   'Add tag',
              //   style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.w600,
              //       color: Color.fromRGBO(122, 13, 190, 1)),
              // ),
              // Row(children: [
              //   Button(name: "For Sale", OnTap: null),
              //   SizedBox(
              //     width: 15,
              //   ),
              //   Button(name: "Not For Sale", OnTap: null)
              // ])
            ],
          )),
    );
  }
}

// class Button extends StatelessWidget {
//   String name;
//   void Function()? OnTap;
//   Button({super.key, required this.name, required this.OnTap});
//   @override
//   Widget build(BuildContext context) {
    // return ElevatedButton(
    //     onPressed: () => OnTap,
    //     style: ElevatedButton.styleFrom(
    //         backgroundColor: Colors.white,
    //         padding: EdgeInsets.symmetric(
    //           vertical: MARGIN_CARD_MEDIUM_2,
    //           horizontal: MARGIN_CARD_MEDIUM_2,
    //         ),
    //         side: BorderSide(color: Colors.black),
    //         elevation: 0,
    //         shape:
    //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
    //     child: Text(
    //       name,
    //       style: TextStyle(
    //           fontSize: 14,
    //           fontWeight: FontWeight.w400,
    //           color: Color.fromRGBO(51, 33, 62, 1)),
    //     ));
//     ;
//   }
// }
