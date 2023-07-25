import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_artworks_info_widget.dart';

import '../../widgets/custom_artwork_image_widget.dart';

class OtherArtworksView extends StatelessWidget {
  const OtherArtworksView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Text("Other artworks", style: styleWithDeePurpleLighter()),
          const SizedBox(
            height: 16,
          ),
                    SizedBox(
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    SizedBox(
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomArtworkImageWidget(
                            height: 200,
                            width:160,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomArtworksInfoWidget(),
                        ],
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 24);
              },
            ),
          ),
        ],
      ),
    );
  }
}
