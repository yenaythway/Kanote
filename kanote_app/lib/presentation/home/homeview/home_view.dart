import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/homeview/current_aution.dart';
import 'package:kanote_app/presentation/home/homeview/exhibition_pages/exhibitions_detail_page.dart';
import 'package:kanote_app/presentation/home/homeview/exhibition_pages/exhibitions_page.dart';
import 'package:kanote_app/presentation/home/homeview/feature_artwork.dart';
import 'package:kanote_app/presentation/home/homeview/gallery_pages/galleries_details_page.dart';
import 'package:kanote_app/presentation/home/homeview/gallery_pages/galleries_page.dart';
import 'package:kanote_app/presentation/home/homeview/nearby_galleries.dart';

import 'package:kanote_app/presentation/home/homeview/populars.dart';
import 'package:kanote_app/presentation/home/homeview/top_artists.dart';
import 'package:kanote_app/presentation/home/homeview/upcoming_exhibition.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/kn_rectangle.dart';

import '../../widgets/image_and_text_verticle_list_view.dart';
import 'artist_page/artists_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isShow = true;
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          isShow = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: isShow
                ? Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: kDividerColor,
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:isArtist ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "You are using as an artist mode.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isShow = false;
                                  });
                                },
                                child: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Row(
                              children: [
                                Text(
                                  "Switch to an artlover mode",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ) : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "You are using as an artlover mode.",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isShow = false;
                                  });
                                },
                                child: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Row(
                              children: [
                                Text(
                                  "Switch to an artist mode",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : null,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1623082691619-f6cacbdaffa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80"),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "Explore Artworks on Kanote",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 14),
                        Text(
                          "Connect with other artists in the community",
                          style: TextStyle(
                              color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(width:10 ,),
                    KNRectangle(
                        onTap: () {
                          context.push(const GalleriesPage());
                        },
                        text: "Galleries",
                        url: "assets/images/gallery.png"),
                    KNRectangle(
                        onTap: () {
                          context.push(const ExhibitionsPage());
                        },
                        text: "Exhibitions",
                        url: "assets/images/Exhibitions.png"),
                    KNRectangle(
                        onTap: () {
                          context.push(const ArtistsPage());
                        },
                        text: "Artists",
                        url: "assets/images/gallery.png"),
                    KNRectangle(
                        onTap: () {},
                        text: "Auctions",
                        url: "assets/images/Auctions.png"),
                   const SizedBox(width:10 ,),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  color: kPrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 227,
                          child: Text(
                            "Connect with other Artists in the community",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Artworks",
                            style: knTitle(),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_SMALL,),
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding:const EdgeInsets.symmetric(
                            horizontal: 12) ,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FeatureArtwork(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: knTitle(),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_SMALL,),
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12) ,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(
                                 8),
                            child: Popular(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Artists",
                            style: knTitle(),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_SMALL,),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(
                                8, ),
                            child: TopArtists(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current Autions",
                            style: knTitle(),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_SMALL,),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(
                                8, ),
                            child: CurrentAution(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nearby Galleries",
                            style: knTitle(),
                          ),
                          GestureDetector(
                            onTap: (){
                              context.push(GalleriesPage(),);
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    SizedBox(
                      height: 255,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12) ,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              context.push(GalleriesDetailsPage());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ImageAndTextVerticalListView(
                                infoTitle: 'Myanm/art',
                                infoText: 'Yangon,Myanmar',
                                infoIcon: 'assets/images/map_icon.png',
                                imageUrl: 'assets/images/gallery_one_image.png', eventDateIcon: '', eventDateInfo: '',isExhibition: false,
                              ),
                            ),
                          );;
                        },
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Exhibitions",
                            style: knTitle(),
                          ),
                          GestureDetector(
                            onTap: (){
                              context.push(ExhibitionsPage());
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: MARGIN_MEDIUM,),
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13) ,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              context.push(ExhibitionsDetailPage());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ImageAndTextVerticalListView(
                                infoTitle: 'Art Winniethepooh 2023',
                                infoText: 'Yangon,Myanmar',
                                infoIcon: 'assets/images/map_icon.png',
                                imageUrl: 'assets/images/gallery_one_image.png', eventDateIcon: 'assets/images/calendar.png', eventDateInfo: 'Feb 16 - Mar 6,2023',isExhibition: true,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
