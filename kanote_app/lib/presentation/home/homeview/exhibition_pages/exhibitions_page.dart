import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/home/homeview/exhibition_pages/exhibitions_detail_page.dart';
import 'package:kanote_app/presentation/home/homeview/exhibition_pages/sort_and_filter_exhibitions_page.dart';

import '../../../market/pages/auction/sort_filter_page.dart';
import '../../../resources/colors.dart';
import '../../../resources/dimens.dart';
import '../../../widgets/image_and_text_verticle_list_view.dart';
import '../gallery_pages/galleries_details_page.dart';

class ExhibitionsPage extends StatefulWidget {
  const ExhibitionsPage({super.key});

  @override
  State<ExhibitionsPage> createState() => _ExhibitionsPageState();
}

class _ExhibitionsPageState extends State<ExhibitionsPage> {
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exhibitions",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: kPrimaryColor),
              ),
              const SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(234, 234, 234, 1),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    const Icon(
                      Icons.search,
                      color: Color.fromRGBO(105, 105, 105, 1),
                    ),
                    const SizedBox(
                      width: MARGIN_MEDIUM,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Find galleries ....",
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromRGBO(105, 105, 105, 1),
                            ),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: kPrimaryColor,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SortAndFilterExhibitionsPage(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          "assets/images/filter_icon.png",
                          width: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: MARGIN_MEDIUM_3,
              ),

              const SizedBox(
                height: MARGIN_MEDIUM_3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ExhibitionsDetailPage(),
                    ),
                  );
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ImageAndTextVerticalListView(
                      infoTitle: 'Art Winniethepooh 2023',
                      infoText: 'Yangon,Myanmar',
                      infoIcon: 'assets/images/map_icon.png',
                      imageUrl: 'assets/images/gallery_one_image.png', eventDateIcon: 'assets/images/calendar.png', eventDateInfo: 'Feb 16 - Mar 6,2023',isExhibition: true,
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Divider(),
              const SizedBox(
                height: MARGIN_MEDIUM_3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ExhibitionsDetailPage(),
                    ),
                  );
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ImageAndTextVerticalListView(
                      infoTitle: 'Art Winniethepooh 2023',
                      infoText: 'Yangon,Myanmar',
                      infoIcon: 'assets/images/map_icon.png',
                      imageUrl: 'assets/images/gallery_one_image.png', eventDateIcon: 'assets/images/calendar.png', eventDateInfo: 'Feb 16 - Mar 6,2023',isExhibition: true,
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
