import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/home/homeview/nearby_galleries.dart';

class ArtistExhibition extends StatelessWidget {
  const ArtistExhibition({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return NearbyGalleries();
        });
  }
}
