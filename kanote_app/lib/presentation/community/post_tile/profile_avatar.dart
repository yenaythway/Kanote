import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile_avatar extends StatelessWidget {
  String image_url;
  Profile_avatar({super.key, required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.amber,
        width: 40,
        height: 40,
        child: Image.asset(image_url)
        // CircleAvatar(
        //   // radius: 20,
        //   backgroundImage: AssetImage(image_url),
        // )
        );
  }
}
