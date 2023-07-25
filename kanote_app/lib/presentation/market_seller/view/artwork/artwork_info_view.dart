import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

class ArtworksInfoView extends StatelessWidget {
  const ArtworksInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text("Artwork's Infos", style: styleWithDeePurpleLighter()),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text('Medium',
                    textAlign: TextAlign.start, style: styleWithGreyLarge()),
              ),
              Expanded(
                child: Text('Painting',
                    textAlign: TextAlign.start, style: styleWithGreyLarge()),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text('Materials',
                    textAlign: TextAlign.start, style: styleWithGreyLarge()),
              ),
              Expanded(
                child: Text('Oil on cardboard',
                    textAlign: TextAlign.start, style: styleWithGreyLarge()),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text("Size",
                    style: styleWithGreyLarge(), textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text(
                  "40 4/5 X 39 1/5 in",
                  style: styleWithGreyLarge(),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text("Condition",
                    style: styleWithGreyLarge(), textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text(
                  "This artwork is offered in excllent and its original condition",
                  style: styleWithGreyLarge(),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text("Signature",
                    style: styleWithGreyLarge(), textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text(
                  "Hand-signed by an artist, Signed and dated on the right corner",
                  style: styleWithGreyLarge(),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
