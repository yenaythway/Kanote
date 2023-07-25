import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/artworks_detail_page.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_artworks_info_widget.dart';

import 'custom_artwork_image_widget.dart';

class CustomArtWidget extends StatelessWidget {
  const CustomArtWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ArtworksDetailPage());
      },
      child: const SizedBox(
        width: 300,
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomArtworkImageWidget(
                height: 200,
                width:300,
              ),
              SizedBox(
                height: 10,
              ),
              CustomArtworksInfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
