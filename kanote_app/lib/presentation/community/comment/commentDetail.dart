import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/comment/comment_tile.dart';

class CommentDetail extends StatelessWidget {
  CommentDetail({super.key});
  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Comments",
          style: TextStyle(
              color: Color.fromRGBO(77, 77, 77, 1),
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                // padding: EdgeInsets.all(10),
                color: Colors.white,
                child: const SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Comment(),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // height: 114,
                    // width: 333,
                    // color: Colors.black,
                    child: TextField(
                        cursorColor: Colors.black,
                        controller: commentController,
                        decoration: const InputDecoration(
                            hintText: "Comment as Delbin",
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)))),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () => null,
                  child: Container(
                    padding: const EdgeInsets.all(9.0),
                    color: Colors.purple[700],
                    child: Image.asset(
                      'assets/icons/commentSent.png',
                      height: 30,
                      width: 30,
                      // color: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   height: 70,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     // color: Color(0xFF0099EE),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey,
          //         blurRadius: 1,
          //         offset: Offset(-4, -4),
          //         // blurRadius: _blurRadius,
          //         spreadRadius: 10,
          //       )
          //     ],
          //   ),
          //   child: Row(
          //     children: [
          //       // paddingAll(15),
          //       Expanded(child: TextField()),
          //       Container(
          //         // color: Colors.purple,
          //         child: Image.asset(
          //           'assets/icons/commentSent.png',
          //           height: 30,
          //           width: 30,
          //           // color: Colors.purple,
          //         ),
          //       )
          //     ],
          //   ),
          //   // shadowColor: Colors.black,
          // )
          // Container(
          //   height: 0,
          //   child: Text('data'),
          //   color: Colors.amber,
          // )
        ],
      ),
    );
  }
}
