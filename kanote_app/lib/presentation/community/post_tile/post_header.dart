import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/post_tile/profile_avatar.dart';

import '../../dialogs/bid_dialog.dart';
import '../report/report_page.dart';
import '../report/rp_dialog.dart';

class Post_header extends StatelessWidget {
  String image_url;
  Post_header({super.key, required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Profile_avatar(
            image_url: this.image_url,
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DelbinTH",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(51, 33, 62, 1)),
                    ),
                    Row(
                      children: [
                        Text('@delbin503',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromRGBO(77, 77, 77, 1))),
                        SizedBox(
                          width: 10,
                        ),
                        Text('. 1hr ago',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color.fromRGBO(77, 77, 77, 1)))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          CommunityPopupMenuButton(),
          // PopupMenuButton(
          //     onSelected: (value) => {
          //           showReportDialog(context,
          //               "Are you sure you want to report this post?", "")
          //         } ////ReportPage()//showBidDialog//AreUSureToReport()
          //     ,
          //     offset: const Offset(-2, 50),
          //     // color: Colors.grey,
          //     elevation: 0,
          //     itemBuilder: (context) => [
          //           const PopupMenuItem(
          //               child: Column(
          //             children: [
          //               Row(
          //                 children: [
          //                   Icon(Icons.favorite_border_outlined),
          //                   SizedBox(
          //                     width: 6,
          //                   ),
          //                   Text(
          //                     "Save post",
          //                     style: TextStyle(
          //                         color: Color.fromRGBO(77, 77, 77, 1),
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w400),
          //                   )
          //                 ],
          //               ),
          //               Divider(
          //                 thickness: 1,
          //               )
          //             ],
          //           )),
          //           PopupMenuItem(
          //               child: Column(
          //             children: [
          //               Row(
          //                 children: [
          //                   Image.asset(
          //                     "assets/images/hidepost.png",
          //                     height: 20,
          //                     width: 20,
          //                     color: Colors.black,
          //                   ),
          //                   SizedBox(
          //                     width: 6,
          //                   ),
          //                   Text(
          //                     "Hide post",
          //                     style: TextStyle(
          //                         color: Color.fromRGBO(77, 77, 77, 1),
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w400),
          //                   )
          //                 ],
          //               ),
          //               Divider(
          //                 thickness: 1,
          //               )
          //             ],
          //           )),
          //           PopupMenuItem(
          //               child: Column(
          //             children: [
          //               Row(
          //                 children: [
          //                   Image.asset(
          //                     "assets/images/copylink.png",
          //                     height: 20,
          //                     width: 20,
          //                     color: Colors.black,
          //                   ),
          //                   SizedBox(
          //                     width: 6,
          //                   ),
          //                   Text(
          //                     "Copy link",
          //                     style: TextStyle(
          //                         color: Color.fromRGBO(77, 77, 77, 1),
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w400),
          //                   )
          //                 ],
          //               ),
          //               Divider(
          //                 thickness: 1,
          //               )
          //             ],
          //           )),
          //           const PopupMenuItem(
          //               value: "report",
          //               child: Column(
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Icon(Icons.sms_failed_outlined),
          //                       SizedBox(
          //                         width: 6,
          //                       ),
          //                       Text(
          //                         "Report post",
          //                         style: TextStyle(
          //                             color: Color.fromRGBO(77, 77, 77, 1),
          //                             fontSize: 14,
          //                             fontWeight: FontWeight.w400),
          //                       )
          //                     ],
          //                   ),
          //                   Divider(
          //                     thickness: 1,
          //                   )
          //                 ],
          //       )),
          // ])
        ],
      ),
    );
  }
}

class CommunityPopupMenuButton extends StatelessWidget {
  CommunityPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (value) {
          if (value == "dialog_box") {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Stack(children: [
                    Container(
                      color: Color.fromRGBO(32, 2, 51, 0.77),
                    ),
                    AlertDialog(
                      // title: Text('Dialog Ti),
                      content: Text(
                        'Are you sure you want to report this post?',
                        style:
                            TextStyle(color: Color.fromRGBO(122, 13, 190, 1)),
                      ),
                      actions: <Widget>[
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      color: Color.fromRGBO(104, 103, 103, 1)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 40)),
                              child: Text(
                                'No',
                                style: TextStyle(
                                    color: Color.fromRGBO(104, 103, 103, 1)),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            Expanded(
                                child: SizedBox(
                              width: 1,
                            )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(122, 13, 190, 1),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 40)),
                                onPressed: () {
                                  Get.off(ReportPage());
                                },
                                child: Text('Yes'))
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      top: 300,
                      right: 30,
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(Icons.close),
                        ),
                      ), //when i change IconButton,it cause error
                    ),
                  ]);
                });
          }
        },
        offset: const Offset(-2, 50),
        // color: Colors.grey,
        elevation: 0,
        itemBuilder: (context) => [
              popupMenuItem(
                  value: "",
                  widget: Icon(Icons.favorite_border_outlined),
                  txt: "Save post"),
              popupMenuItem(
                  value: "",
                  widget: Image.asset(
                    "assets/images/hidepost.png",
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                  txt: "Hide post"),
              popupMenuItem(
                value: "",
                txt: "Copy link",
                widget: Image.asset(
                  "assets/images/copylink.png",
                  height: 20,
                  width: 20,
                  color: Colors.black,
                ),
              ),
              popupMenuItem(
                value: "dialog_box",
                txt: "Report post",
                widget: Icon(Icons.sms_failed_outlined),
              )
            ]);
  }

  PopupMenuItem<dynamic> popupMenuItem({
    required String txt,
    required Widget widget,
    required String value,
    // required void Function()? ontap
  }) {
    return PopupMenuItem(
        value: value,
        child: Column(
          children: [
            Row(
              children: [
                // Icon(Icons.favorite_border_outlined),
                widget,
                SizedBox(
                  width: 6,
                ),
                Text(
                  txt, //"Save post",
                  style: TextStyle(
                      color: Color.fromRGBO(77, 77, 77, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Divider(
              thickness: 1,
            )
          ],
        ));
  }
}
