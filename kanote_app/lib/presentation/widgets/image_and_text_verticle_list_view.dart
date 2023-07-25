import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';
import '../resources/dimens.dart';

class ImageAndTextVerticalListView extends StatelessWidget {
 String? infoTitle;
 String? infoText;
 String? infoIcon;
 String? imageUrl;
 String? eventDateIcon;
 String? eventDateInfo;
 bool isExhibition;



 ImageAndTextVerticalListView({super.key, required this.infoTitle,required this.infoText,required this.infoIcon,required this.imageUrl,required this.eventDateIcon,required this.eventDateInfo,this.isExhibition=true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: 386,
              height: 155,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageUrl??"",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(95, 52, 135, 0.7),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Nearby",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        Text(
          infoTitle??"",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: MARGIN_MEDIUM,
        ),
        Visibility(
          visible:isExhibition ,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  eventDateIcon??"",
                  width: 20,
                ),
                const SizedBox(
                  width: MARGIN_SMALL,
                ),
                Text(
                  eventDateInfo??"",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Image.asset(
                infoIcon??"",
                width: 20,
              ),
              const SizedBox(
                width: MARGIN_SMALL,
              ),
              Text(
                infoText??"",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}