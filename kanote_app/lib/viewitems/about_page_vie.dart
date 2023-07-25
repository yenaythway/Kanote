import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/viewitems/exhibitors_square_horizontal_list_view.dart';
import 'package:readmore/readmore.dart';

import '../presentation/home/homeview/gallery_pages/galleries_details_page.dart';
import '../presentation/widgets/image_and_text_verticle_list_view.dart';

class AboutPageView extends StatelessWidget {
  bool isExhibitionDetail;

  AboutPageView({this.isExhibitionDetail = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        (isExhibitionDetail)
            ? Text(
                "About the exhibition",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Text(
                "About the gallery",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel massa id metus fringilla feugiat. Vivamus consequat'
          ' ex vitae lobortis. Sed vel condimentum odio, nec scelerisque ex. Cras porttitor ex id facilisis malesuada. Sed accumsan, nulla non '
          'facilisis ullamcorper, eros nisi sagittis enim, sit amet cursus leo metus nec metus. Aenean elementum finibus diam. Donec at placerat leo. '
          'Vestibulum maximus, nisi eu tempus congue, arcu justo feugiat leo, at eleifend urna dui ut ligula.',
          trimLines: 4,
          colorClickableText: kPrimaryColor,
          trimMode: TrimMode.Line,
          trimCollapsedText: '...Read more',
          trimExpandedText: ' Read less',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(
              77,
              77,
              77,
              1.0,
            ),
          ),
          moreStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
          ),
          lessStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        const Divider(),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "Location",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kIconColor,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/map_icon.png",
                  width: 20,
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM_3,
                ),
              ],
            ),
            const SizedBox(
              width: MARGIN_MEDIUM,
            ),
            Expanded(
              child: Text(
                "23th, 64 Road, 69 street x 99 Street, Bago Taw Township, Yangon/ Thraphi Galley",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        const Divider(),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "Opening Hours",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kIconColor,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Row(
          children: [
            const Icon(
              Icons.access_time_outlined,
              size: 25,
            ),
            const SizedBox(
              width: MARGIN_MEDIUM,
            ),
            Text(
              "Monday - Friday : 9.00 am - 18.00 pm",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: MARGIN_MEDIUM,
        ),
        Divider(),
        const SizedBox(
          width: MARGIN_MEDIUM,
        ),
        Visibility(
          visible: isExhibitionDetail,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About the gallery",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: kIconColor,
                ),
              ),
              const SizedBox(
                height: MARGIN_MEDIUM,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const GalleriesDetailsPage(),
                    ),
                  );
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ImageAndTextVerticalListView(
                      infoTitle: 'Myanm/art',
                      infoText: 'Yangon,Myanmar',
                      infoIcon: 'assets/images/map_icon.png',
                      imageUrl: 'assets/images/gallery_one_image.png',
                      eventDateIcon: '',
                      eventDateInfo: '',
                      isExhibition: false,
                    );
                  },
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        const Divider(),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "Exhibitors",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kIconColor,
          ),
        ),
        Visibility(
          visible: isExhibitionDetail,
          child: SizedBox(
            height: 170,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const ExhibitorsSquareHorizontalListView();
              },
              itemCount: 3,
            ),
          ),
        ),
        const Divider(),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "Contact info",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kIconColor,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/map_icon.png",
                  width: 20,
                ),
                const SizedBox(
                  height: MARGIN_MEDIUM_3,
                ),
              ],
            ),
            const SizedBox(
              width: MARGIN_MEDIUM,
            ),
            Expanded(
              child: Text(
                "Konigasalle 27-31 40265,Dusseldorf Mandalay",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone_in_talk,
              color: kIconColor,
            ),
            const SizedBox(
              width: MARGIN_MEDIUM,
            ),
            Expanded(
              child: Text(
                "+959 9796082875",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Row(
          children: [
            const Icon(
              Icons.contact_mail_outlined,
              color: kIconColor,
            ),
            const SizedBox(
              width: MARGIN_MEDIUM,
            ),
            Expanded(
              child: Text(
                "Social Media accounts",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        const Divider(),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Text(
          "Other Exhibitions From Galleries",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: kIconColor,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const GalleriesDetailsPage(),
              ),
            );
          },
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ImageAndTextVerticalListView(
                infoTitle: 'Myanm/art',
                infoText: 'Yangon,Myanmar',
                infoIcon: 'assets/images/map_icon.png',
                imageUrl: 'assets/images/gallery_one_image.png',
                eventDateIcon: '',
                eventDateInfo: '',
                isExhibition: false,
              );
            },
            itemCount: 2,
          ),
        )
      ],
    );
  }
}
