import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

import '../pages/artworks_detail_page.dart';
import '../widgets/custom_art_widget.dart';

class LatestArtworkListView extends StatelessWidget {
  const LatestArtworkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ArtworksDetailPage());
      },
      child: Column(
        children: [
          ListTile(
            title: Text("Latest Artworks", style: styleWithDeePurpleBold()),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: deepPurpleColor,
            ),
          ),
          SizedBox(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomArtWidget(),
                CustomArtWidget(),
                CustomArtWidget(),
                CustomArtWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
