import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

class ArtworksTitleView extends StatelessWidget {
  const ArtworksTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
         Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Flower & Frog Mon",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: detailHeadingColor),
          ),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ClipRRect(
              child: Image.asset(
                "assets/images/profile_image.png",
                height: 20,
              ),
            ),
          ),
          title: Text("Hnin Cherry", style: styleWithGreySmall()),
          trailing: Text("Posted 5 days ago", style: styleWithGreySmall()),
        ),
      ],
    );
  }
}
