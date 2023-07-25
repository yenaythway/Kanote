import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class Tile extends StatelessWidget {
  final int index;


  const Tile({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "https://lh3.googleusercontent.com/ci/AJFM8rzp_VjUGbq1Ir9O25v5QfdW8a9nHq5YBbkDT6cnS6nULOi2cSZ--5zSzlIsseWtzK_ydgxE-g",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height:MARGIN_SMALL ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Flower & a Frog",
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16),overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(
                Icons.favorite_border
              ),
            ],
          ),
          Text(
            "by Gojo",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12,
            color:Colors.grey),
          ),
          Text(
            "15000 MMK",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 16,
            color: secondaryPurpleColor),
          ),
        ],
      ),
    );
  }
}
