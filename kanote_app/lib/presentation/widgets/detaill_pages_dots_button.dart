import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class DetailPagesDotsButton extends StatefulWidget {
  const DetailPagesDotsButton({super.key});

  @override
  State<DetailPagesDotsButton> createState() => _DetailPagesDotsButtonState();
}

class _DetailPagesDotsButtonState extends State<DetailPagesDotsButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (context) =><PopupMenuEntry> [
        PopupMenuItem(

          child: Row(
            children: [
              Image.asset(
                "assets/images/share.png",
                width: 20,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: MARGIN_MEDIUM,
              ),
              Text(
                "Share",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(77, 77, 77, 1),
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem(
          child: Row(
            children: [
              Image.asset(
                "assets/images/copy_link.png",
                width: 25,
              ),
              const SizedBox(
                width: MARGIN_MEDIUM,
              ),
              Text(
                "Link",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(77, 77, 77, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

