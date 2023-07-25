import 'package:flutter/material.dart';

import '../res/custom_textstyles.dart';

class CustomArtworksInfoWidget extends StatelessWidget {
  const CustomArtworksInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Flower & a Frog", style: styleWithDeePurpleBold(),overflow: TextOverflow.ellipsis,)),
            const Icon(Icons.favorite_border)
          ],
        ),
        Text("By Hnin Cherry", style: styleWithGreySmall()),
        Text("15000 MMK", style: styleWithSecondPurpleLarge()),
      ],
    );
  }
}
