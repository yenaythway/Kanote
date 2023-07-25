import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class CreateAuctionTitleSectionView extends StatelessWidget {
  final String stepNumber;
  final String title;

  const CreateAuctionTitleSectionView({super.key, 
    required this.stepNumber,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Step $stepNumber of 4",
            style: knNormalText().copyWith(
              color: const Color.fromRGBO(107, 107, 107, 1.0),
            ),
          ),
          const SizedBox(height: MARGIN_MEDIUM),
          Text(
            title,
            style: knTitle().copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
