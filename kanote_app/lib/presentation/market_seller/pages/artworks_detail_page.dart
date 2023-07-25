import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/pages/checkout_page.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/Drawer/Pages/cart_list_page.dart';
import 'package:kanote_app/presentation/market_seller/view/artwork/artworks_title_view.dart';
import 'package:kanote_app/presentation/market_seller/view/artwork/image_slider_view.dart';

import '../widgets/custom_divider.dart';
import '../view/artwork/about_artist_view.dart';
import '../view/artwork/artwork_info_view.dart';
import '../view/artwork/artworks_description_view.dart';
import '../view/artwork/other_artworks_by_artist_view.dart';
import '../view/artwork/other_artworks_view.dart';

class ArtworksDetailPage extends StatelessWidget {
  const ArtworksDetailPage({super.key});

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
        actions: [
          Icon(Icons.favorite_outline, color: deepPurpleColor),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.ios_share, color: deepPurpleColor),
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const ImageSliderView(),
              const ArtworksTitleView(),
              customDivider(),
              const ArtdorksDescriptionView(),
              customDivider(),
              const ArtworksInfoView(),
              customDivider(),
              const ColorUsedInTheArtworkView(),
              customDivider(),
              const AboutArtistView(),
              customDivider(),
              const OtherArtworksByArtistView(),
              customDivider(),
              const OtherArtworksView(),
              customDivider(),
              const SizedBox(
                height: 160,
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: AddCartOrBuyNowView(),
        ),
      ]),
    );
  }
}

class AddCartOrBuyNowView extends StatefulWidget {
  const AddCartOrBuyNowView({super.key});

  @override
  State<AddCartOrBuyNowView> createState() => _AddCartOrBuyNowViewState();
}

class _AddCartOrBuyNowViewState extends State<AddCartOrBuyNowView> {
  bool isAddedToCart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          spreadRadius: 2,
          blurRadius: 1,
          offset: Offset(0, -1),
        ),
      ], color: primaryColor),
      height: 160,
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("15000 MMK", style: styleWithSecondPurpleLarge()),
            const SizedBox(
              height: 10,
            ),
            Text("excl. Shipping and Taxes", style: styleWithGreySmall()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAddedToCart = !isAddedToCart;
                        });
                        isAddedToCart
                            ? null
                            : context.push(const CartListPage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: primaryColor,
                        foregroundColor: isAddedToCart
                            ? secondaryPurpleColor
                            : deepPurpleColor,
                        side: BorderSide(
                            width: 1,
                            color: isAddedToCart
                                ? secondaryPurpleColor
                                : deepPurpleColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.shopping_cart),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            isAddedToCart ? "View Cart" : "Add to cart",
                            overflow: TextOverflow.ellipsis,
                          ))
                        ],
                      )),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        context.push(const CheckoutPage(
                          selectedTab: 0,
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: secondaryPurpleColor,
                        foregroundColor: primaryColor,
                        side: BorderSide(width: 1, color: dividerColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/buy_icon.png",
                            height: 24,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("Buy Now")
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

List colors = [
  const Color(0xff05b6c2),
  const Color(0xffd85c03),
  const Color(0xffd19827),
  const Color(0xffdedbd4),
  const Color(0xffd1bfd9),
];

class ColorUsedInTheArtworkView extends StatelessWidget {
  const ColorUsedInTheArtworkView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Color used in the Artwork",
            style: styleWithDeePurpleLighter(),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              itemCount: colors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 30,
                      color: colors[index],
                    ));
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
