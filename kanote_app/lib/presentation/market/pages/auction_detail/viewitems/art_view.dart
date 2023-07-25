import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class ArtView extends StatelessWidget {
  const ArtView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageView(),
          const SizedBox(height: MARGIN_SMALL),
          const TitleAndLikeButtonView(),
          Text(
            "by Hnin Cherry",
            style: knTextSmall().copyWith(
              color: kDescriptionColor,
            ),
          ),
          Text(
            "15000 MMK",
            style: knNormalText().copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleAndLikeButtonView extends StatelessWidget {
  const TitleAndLikeButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            "Flower & a Frog",
            maxLines: 1,
            style: knNormalText().copyWith(
              fontWeight: FontWeight.w600,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(width: MARGIN_SMALL),
        const Icon(
          Icons.favorite_border,
          color: kDescriptionColor,
          size: MARGIN_MEDIUM_3,
        ),
      ],
    );
  }
}

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      child: Image.network(
        "https://cdn11.bigcommerce.com/s-x49po/images/stencil/1280x1280/products/74386/111646/1630169598435_IMG_20200930_135106__70150.1630495879.jpg?c=2",
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
