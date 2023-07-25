import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/pages/best_seller_listing_page.dart';
import '../widgets/custom_art_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.push(const BestSellerListingPage());
          },
          child:  ListTile(
            title: Text("Best Sellers",style: styleWithDeePurpleBold()),
            trailing:  Icon(Icons.arrow_forward_ios,color: deepPurpleColor,),
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
    );
  }
}
