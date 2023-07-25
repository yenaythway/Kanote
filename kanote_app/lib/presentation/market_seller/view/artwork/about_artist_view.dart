import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_see_more_widget.dart';

class AboutArtistView extends StatelessWidget {
  const AboutArtistView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
         Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "About the artist",
            style: styleWithDeePurpleLighter()       ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ClipRRect(
              child: Image.asset(
                "assets/images/profile_image.png",
                height: 40,
              ),
            ),
          ),
          title:  Text("Hnin Cherry",
              style: TextStyle(
                  fontSize: 14,
                  color: deepPurpleColor,
                  fontWeight: FontWeight.w500)),
          subtitle:  Text("@hnincherry123",
              style: styleWithGreySmall()),
          trailing: Container(
            decoration: BoxDecoration(
                color: secondaryPurpleColor,
                borderRadius: BorderRadius.circular(2)),
            height: 44,
            width: 88,
            child:  Center(
              child: Text("Follow",
                  style: TextStyle(
                      fontSize: 16, color: primaryColor)),
            ),
          ),
        ),
         const Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: CustomSeeMoreWidget(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
