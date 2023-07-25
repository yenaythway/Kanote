import 'package:flutter/material.dart';

import '../post_tile/profile_avatar.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   child:
        ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) => const CommentTile()),
      // ),
    );
    //   ),
    // );
  }
}

class CommentTile extends StatelessWidget {
  const CommentTile({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.all(3),
        // color: Colors.amber,
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 5),
            child:
                Profile_avatar(image_url: 'assets/images/profile_image.png')),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 242, 249, 1),
                    borderRadius: BorderRadiusDirectional.circular(4)),
                // color: Colors.grey,
                child: const Column(
                  children: [
                    Comment_header(),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "This is a wonderful art I have seen since this morning. I love it!!!!.",
                      style: TextStyle(
                          color: Color.fromRGBO(77, 77, 77, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(Icons.favorite_outline)),
                    const Text(
                      "Like",
                      style: TextStyle(
                          color: Color.fromRGBO(105, 105, 105, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Container(
                    //     child: Image.asset(
                    //       'assets/icons/share.png',
                    //       width: 20,
                    //       height: 20,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),

                    const Text(
                      "Reply",
                      style: TextStyle(
                          color: Color.fromRGBO(105, 105, 105, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                        child: SizedBox(
                      width: 1,
                    )),
                    Icon(
                      Icons.favorite_outline,
                      size: 15,
                    ),
                    Text(
                      "69",
                      style: TextStyle(
                          color: Color.fromRGBO(
                            105,
                            105,
                            105,
                            1,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              // Image.asset(
              //   "assets/images/line.png",
              //   color: Colors.amber, //.fromRGBO(105, 105, 105, 1),
              //   height: 200,
              //   width: 200,
              //   // height: 100,
              // ),
              GestureDetector(
                  onTap: () => null,
                  child: Text(
                    '____View more 6 replies',
                    style: TextStyle(
                        color: Color.fromRGBO(105, 105, 105, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )),
              SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    ));
  }
}

class Comment_header extends StatelessWidget {
  const Comment_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                'Delbin TH',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromRGBO(51, 33, 62, 1)),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '@delblu503',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color.fromRGBO(77, 77, 77, 1)),
              ),
            ],
          ),
        ),
        Row(children: [
          Text('1 hour',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color.fromRGBO(77, 77, 77, 1)))
        ])
      ],
    );
  }
}
