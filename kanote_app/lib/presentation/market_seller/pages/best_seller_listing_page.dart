import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/pages/artworks_detail_page.dart';
import 'package:kanote_app/presentation/market_seller/pages/filter_page.dart';

import '../widgets/custom_artworks_info_widget.dart';

class BestSellerListingPage extends StatelessWidget {
  const BestSellerListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: deepPurpleColor,
            ),
          ),
          title: Text(
            "Best Sellers",
            style: TextStyle(
              color: greyColor,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                "Sort By",
                style: TextStyle(color: deepPurpleColor, fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                context.push(const FilterPage());
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  "assets/images/mi_filter.png",
                  width: 28,
                ),
              ),
            )
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MasonryGridView.count(
            itemCount: 10,
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 12,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.push(const ArtworksDetailPage());
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2017/07/03/20/17/colorful-2468874_1280.jpg",
                        height: index.isEven ? 240 : 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomArtworksInfoWidget(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              );
            },
          ),
        ));
  }
}
