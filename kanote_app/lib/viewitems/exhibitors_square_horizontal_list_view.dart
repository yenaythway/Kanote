import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExhibitorsSquareHorizontalListView extends StatelessWidget {
  const ExhibitorsSquareHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5,right: 10,bottom: 6),
          child: SizedBox(
            width: 120,
            height: 120,
            child: Image.network(
              "https://weraveyou.com/wp-content/uploads/2022/07/hardwell-tomorrowland-2022.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 100,
            child: Text(
              "Hardwell",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ),
        ),

      ],
    );
  }
}
