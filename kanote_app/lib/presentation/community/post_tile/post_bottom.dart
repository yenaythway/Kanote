import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/comment/commentDetail.dart';

class Post_bottom extends StatefulWidget {
  const Post_bottom({super.key});

  @override
  State<Post_bottom> createState() => _Post_bottomState();
}

class _Post_bottomState extends State<Post_bottom> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "57 likes . 3 comments",
                style: TextStyle(
                    color: Color.fromRGBO(51, 33, 62, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )
            ],
          ),
          Row(
            // crossAxisAlignment: cross,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: SizedBox(
                width: 1,
              )),
              Container(
                width: 40,
                height: 40,
                child: IconButton(
                    color: isliked ? Colors.purple : null,
                    onPressed: () {
                      setState(() {
                        isliked = !isliked;
                      });
                    },
                    icon: isliked
                        ? Icon(
                            Icons.thumb_up,
                          )
                        : Icon(
                            Icons.thumb_up_alt_outlined,
                            // color: Colors.black,
                          )),
              ),
              SizedBox(
                width: 3,
              ),
              Text('Like',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(51, 33, 62, 1))),
              Expanded(
                  child: SizedBox(
                width: 1,
              )),
              GestureDetector(
                onTap: () => Get.to(CommentDetail()),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/icons/comment.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              GestureDetector(
                onTap: () => Get.to(CommentDetail()),
                child: Text("Comment",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(51, 33, 62, 1))),
              ),
              Expanded(
                  child: SizedBox(
                width: 1,
              )),
              GestureDetector(
                onTap: () => null,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/icons/share.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "Share",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(51, 33, 62, 1)),
              ),
              Expanded(
                  child: SizedBox(
                width: 1,
              )),
              // SizedBox(
              //   width: 120,
              // ),
              // Expanded(
              //     child: Container(
              //   padding: EdgeInsets.symmetric(vertical: 10),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(4),
              //       color: Colors.purple[800]),
              //   child: Center(
              //       child: Text(
              //     'For Sale',
              //     style: TextStyle(color: Colors.white, fontSize: 10),
              //   )),
              // ))
            ],
          ),
        ],
      ),
    );
  }
}

// Container(
//               padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
//               decoration: const BoxDecoration(
//                 color: kPrimaryColor,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(MARGIN_MEDIUM),
//                   bottomRight: Radius.circular(MARGIN_MEDIUM),
//                 ),
//               ),
//               child: Image.asset(
//                 "assets/images/filter_icon.png",
//                 width: 20,
//                 height: 20,
//               ),
//             ),