import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/custom_textstyles.dart';
import '../../widgets/custom_artwork_image_widget.dart';

class ArtworkInfoView extends StatelessWidget {
  const ArtworkInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading:  const CustomArtworkImageWidget(height: 80,width: 60,),
          title: Text(
            'Flower and a frog',
            style: styleWithDeePurpleBold(),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Painting....',
                style: styleWithGreyLarge(),
              ),
              Text(
                '15000MMK',
                style: styleWithSecondPurpleLarge(),
              ),
            ],
          ),
          trailing: Container(
            width: 100,
            height: 50,
            color: secondaryPurpleColor,
            child: Center(
                child: Text(
              "Remove",
              style: TextStyle(color: primaryColor, fontSize: 18),
            )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

