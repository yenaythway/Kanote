import 'package:flutter/material.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://i.ytimg.com/vi/Ss93JCFSf34/maxresdefault.jpg",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
