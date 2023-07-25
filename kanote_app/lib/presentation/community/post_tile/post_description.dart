import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/detail_post/detail_post.dart';

class Post_description extends StatefulWidget {
  String content;
  Post_description({super.key, required this.content});

  @override
  State<Post_description> createState() => _Post_descriptionState();
}

class _Post_descriptionState extends State<Post_description> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Detail_Post(
          content: widget.content, image_url: 'assets/images/post_image.png')),
      child: RichText(
          // maxLines: 2,
          text: TextSpan(
              text: widget.content.substring(0, 120),
              style: TextStyle(
                  color: Color.fromRGBO(77, 77, 77, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
              children: [
            TextSpan(
                text: '...See more',
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 17))
          ])),
    );
  }
}


// GestureDetector(
//         child: ReadMoreText(content,
//             trimLines: 2,
//             trimMode: TrimMode.Line,
//             trimExpandedText: "see less",
//             trimCollapsedText: "see more",
//             lessStyle: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
//             moreStyle: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
//             style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12)),
//         onTap: () => Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => PostDetail()),
//             ))