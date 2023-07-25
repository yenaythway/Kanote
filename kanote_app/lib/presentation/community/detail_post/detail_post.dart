import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/main.dart';
import 'package:kanote_app/presentation/community/post_tile/post_bottom.dart';
import 'package:kanote_app/presentation/community/post_tile/post_header.dart';
import 'package:kanote_app/presentation/community/post_tile/post_image.dart';

import '../../create_auction/choose_layout_page.dart';
import '../comment/comment_tile.dart';

class Detail_Post extends StatelessWidget {
  String content;
  String image_url;

  Detail_Post({super.key, required this.content, required this.image_url});

  @override
  Widget build(BuildContext context) {
    // int like_count = 0;
    // int comment_count = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Post Detail',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(children: [
              Post_header(image_url: 'assets/images/profile_image.png'),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                content,
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                content,
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Text(
                content,
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              image_url != null
                  ? ClassicLayout(
                      isCreate: false,
                    ) //Post_image(image_url: image_url)
                  : const SizedBox.shrink(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [Text('45 Liked .'), Text('38 Comments')],
              ),
              const SizedBox(
                height: 10,
              ),
              const Post_bottom(),
              const Divider(
                thickness: 1.0,
                // height: 10,
              ),
              const Comment()
              // ListView.builder(

              //     itemCount: 10,
              //     itemBuilder: ((context, index) => CommentTile()))
            ]),
          ),
        ),
      ),
    );
  }
}
