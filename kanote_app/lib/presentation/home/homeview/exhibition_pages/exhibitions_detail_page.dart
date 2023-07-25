import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../viewitems/about_page_vie.dart';
import '../../../../viewitems/art_work_page.dart';
import '../../../../viewitems/event_page_view.dart';
import '../../../resources/colors.dart';
import '../../../resources/dimens.dart';
import '../../../widgets/detaill_pages_dots_button.dart';

class ExhibitionsDetailPage extends StatefulWidget {
  const ExhibitionsDetailPage({super.key});

  @override
  State<ExhibitionsDetailPage> createState() => _ExhibitionsDetailPageState();
}

class _ExhibitionsDetailPageState extends State<ExhibitionsDetailPage>
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
          DetailPagesDotsButton(),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/exhibition_detail_img.png",
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: MARGIN_MEDIUM_3,
                        ),
                        Text(
                          "Art Winniethepooh 2023",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: kPrimaryDarkColor,
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
                                'assets/images/calendar.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: MARGIN_SMALL,
                              ),
                              Text(
                                "From Feb 16th - Mar 6th 2023",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Text("Artworks"),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    SingleChildScrollView(
                      child: AboutPageView(
                        isExhibitionDetail: true,
                      ),
                    ),
                    const ArtWorkPage(),
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
