import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/home/homeview/exhibition_pages/exhibitions_detail_page.dart';

import '../presentation/resources/colors.dart';
import '../presentation/resources/dimens.dart';
import '../presentation/widgets/image_and_text_verticle_list_view.dart';

class EventPageView extends StatelessWidget {
  const EventPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        Text(
          "Upcoming exhibition",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ExhibitionsDetailPage(),),);
          },
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ImageAndTextVerticalListView(
                infoTitle: 'Art Winniethepooh',
                infoText: 'Feb 16 - Mar 6,2023',
                infoIcon: 'assets/images/calendar_icon.png',
                imageUrl: 'assets/images/Placeholder Square.png',
                eventDateIcon: '',
                eventDateInfo: '',
                isExhibition: false,
              );
            },
            itemCount: 3,
          ),
        )
      ],
    );
  }
}
