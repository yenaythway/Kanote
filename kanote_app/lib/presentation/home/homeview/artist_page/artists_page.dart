import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/presentation/home/homeview/artist_page/sort_and_filter_artists_page.dart';

import '../../../resources/colors.dart';
import '../../../resources/dimens.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({super.key});

  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Artists",
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
                          hintText: "Find your artists",
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color.fromRGBO(105, 105, 105, 1),
                          ),
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: MARGIN_XXLARGE + 128,
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
                            builder: (context) =>
                                const SortAndFilterArtistsPage(),
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
              height: MARGIN_MEDIUM,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Artists",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 2,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 9/13,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://www.bona.co.za/wp-content/uploads/2023/03/FqO4F_eWAAEs52q.jpeg",
                              height: 140,fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
