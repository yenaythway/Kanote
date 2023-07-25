import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/create_auction/pages/choose_photo_page.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';


class AddArtworkInfo extends StatelessWidget {
  const AddArtworkInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(title: "Create an auction post"),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TitleSectionView(
              num: 3,
              title: "Add artwork Information",
            ),
          ],
        ));
  }
}
