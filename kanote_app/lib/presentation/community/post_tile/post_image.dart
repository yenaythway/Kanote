import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Post_image extends StatelessWidget {
  String image_url;
  Post_image({super.key, required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image_url);
  }
}
