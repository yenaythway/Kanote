import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/widgets/detaill_pages_dots_button.dart';

import '../../../../viewitems/about_page_vie.dart';
import '../../../../viewitems/event_page_view.dart';
import '../../../resources/dimens.dart';
import '../../../widgets/map_page.dart';

class GalleriesDetailsPage extends StatefulWidget {
  const GalleriesDetailsPage({super.key});

  @override
  State<GalleriesDetailsPage> createState() => _GalleriesDetailsPageState();
}

class _GalleriesDetailsPageState extends State<GalleriesDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        currentIndex = controller.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          DetailPagesDotsButton()
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/galllery_detail_image.png",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        right: 15,
                        bottom: 10,
                        child: Container(
                          width: 34,
                          height: 34,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              context.push(MapPage());
                            },
                            icon: Image.asset(
                              "assets/images/map_icon.png",
                              color: Colors.white,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/gallery_small_image.png",
                          width: 59,
                        ),
                        const SizedBox(
                          width: MARGIN_MEDIUM,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Myanm/art",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: MARGIN_SMALL,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TabBar(
                controller: controller,
                labelColor: kPrimaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                tabs: const [
                  Tab(
                    child: Text("About"),
                  ),
                  Tab(
                    child: Text("Event"),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    SingleChildScrollView(
                      child: AboutPageView(
                        isExhibitionDetail: false,
                      ),
                    ),
                    const SingleChildScrollView(
                      child: EventPageView(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
