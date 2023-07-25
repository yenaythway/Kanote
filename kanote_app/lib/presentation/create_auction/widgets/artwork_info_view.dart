import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class ArtworkInfoView extends StatelessWidget {
  final String title;
  final String description;
  final bool isSignature;
  final String imageUrl;

  ArtworkInfoView({
    required this.title,
    this.description = "",
    this.isSignature = false,
    this.imageUrl = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: knNormalText(),
        ),
        SizedBox(height: MARGIN_SMALL),
        !isSignature
            ? Text(
                description,
                style: knNormalText().copyWith(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              )
            : Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Image.network(
                    imageUrl,
                    height: 80,
                  ),
                ),
              ),
      ],
    );
  }
}
