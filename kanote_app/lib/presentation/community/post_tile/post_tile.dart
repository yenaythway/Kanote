import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/community/post_tile/post_bottom.dart';
import 'package:kanote_app/presentation/community/post_tile/post_description.dart';
import 'package:kanote_app/presentation/community/post_tile/post_header.dart';
import 'package:kanote_app/presentation/create_auction/choose_layout_page.dart';

class Post_tile extends StatelessWidget {
  String profile_url = 'assets/images/profile_image.png';
  String context =
      "I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.I've been thingking of drawing a tree lately and I this morning I drew this artwork on a canva.";
  // var a = context.length;
  String post_image_url = 'assets/images/post_image.png';

  Post_tile({
    super.key,
    // required this.profile_url,
    // required this.description,
    // required this.post_image_url
  }) {
    // print(context.length);
    // context.substring(start)
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      // color: Colors.grey,
      // child: Text('data')
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Post_header(
            image_url: profile_url,
          ),
          SizedBox(
            height: 12,
          ),
          Post_description(
            content: this.context,
          ),
          SizedBox(
            height: 12,
          ),
          post_image_url != null
              ? ClassicLayout(
                  isCreate: false,
                ) //Image.asset(post_image_url)
              : SizedBox.shrink(),
          Post_bottom(),
          Divider(
            thickness: 1,
            color: Color.fromRGBO(227, 223, 223, 1),
          )
        ],
      ),
    );
  }
}
