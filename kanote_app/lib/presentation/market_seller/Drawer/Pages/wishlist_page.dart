import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';

import '../../../resources/dimens.dart';
import '../../res/colors.dart';
import '../../widgets/custom_artworks_info_widget.dart';
import '../../pages/artworks_detail_page.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: deepPurpleColor,
              ),
            ),
            centerTitle: false,
            title: Text(
              "Saved",
              style: TextStyle(
                color: greyColor,
              ),
            ),
            bottom: TabBar(
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                unselectedLabelColor: tabbarInactiveColor,
                labelColor: secondaryPurpleColor,
                labelStyle: const TextStyle(fontSize: 16),
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
                 isScrollable: true,
                indicatorColor: secondaryPurpleColor,
                tabs: const [
                  Tab(
                      child: Text(
                    "Artwork",
                  )),
                  Tab(
                    child: Text(
                      "Social Posts",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Gallaries",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Exhibitions",
                    ),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            WhishlistView(),
            SocialPostsTabView(),
            GallariesTabView(),
            ExhibitionsTabView(),
          ])),
    );
  }
}

class WhishlistView extends StatelessWidget {
  const WhishlistView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
    );
  }
}

class GallariesTabView extends StatelessWidget {
  const GallariesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 386,
                height: 155,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/gallery_one_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Text("Myanma/art",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: MARGIN_MEDIUM,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/map_icon.png",
                    width: 20,
                  ),
                  const SizedBox(
                    width: MARGIN_SMALL,
                  ),
                  Text(
                    "Yangon,Myanmar",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: 5,
      ),
    );
  }
}

class ExhibitionsTabView extends StatelessWidget {
  const ExhibitionsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 386,
                height: 155,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/gallery_one_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Text("Art Winniethepooh 2023",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: MARGIN_MEDIUM,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/calendar.png",
                    width: 18,
                  ),
                  const SizedBox(
                    width: MARGIN_SMALL,
                  ),
                  Text(
                    "Feb 16 - Mar6,2023",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: MARGIN_MEDIUM,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/map_icon.png",
                    width: 20,
                  ),
                  const SizedBox(
                    width: MARGIN_SMALL,
                  ),
                  Text(
                    "Yangon,Myanmar",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: 5,
      ),
    );
  }
}

class SocialPostsTabView extends StatelessWidget {
  const SocialPostsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 140,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        "assets/images/gallery_one_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: MARGIN_MEDIUM,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Guys, Check this is my newly drawn artwork",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: MARGIN_SMALL,
                        ),
                        Text(
                          "Saved 5h ago",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                        const SizedBox(
                          height: MARGIN_SMALL,
                        ),
                        Text(
                          "Delbin TH",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: MARGIN_MEDIUM,
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
        separatorBuilder: (context, index) => Column(
              children: [
                const SizedBox(
                  height: MARGIN_CARD_MEDIUM_2,
                ),
                customDivider(),
                const SizedBox(
                  height: MARGIN_CARD_MEDIUM_2,
                ),
              ],
            ),
        itemCount: 10);
  }
}
