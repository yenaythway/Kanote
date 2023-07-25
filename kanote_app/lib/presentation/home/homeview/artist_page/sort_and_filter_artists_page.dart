import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';

import '../../../resources/dimens.dart';
import '../../../widgets/artists_sort_by_drop_down_list.dart';

class SortAndFilterArtistsPage extends StatefulWidget {
  const SortAndFilterArtistsPage({super.key});

  @override
  _SortAndFilterArtistsPageState createState() =>
      _SortAndFilterArtistsPageState();
}

class _SortAndFilterArtistsPageState extends State<SortAndFilterArtistsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          "Sort & Filter",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: kPrimaryColor,
          ),
        ),
      ),
      body:  Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ArtistSortByDropDownListView(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: MARGIN_LARGE,
          ),
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const ApplyThisFilterButtonField(),
          ),
          const SizedBox(
            height: MARGIN_LARGE,
          ),
        ],
      ),
    );
  }
}

class ApplyThisFilterButtonField extends StatelessWidget {
  const ApplyThisFilterButtonField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      color: kPrimaryColor,
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          "Apply This Filter",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
