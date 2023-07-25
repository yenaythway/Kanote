import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class BidSubmittedPage extends StatelessWidget {
  const BidSubmittedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const Positioned(
              top: MARGIN_XXLARGE,
              right: MARGIN_MEDIUM_2,
              child: Icon(
                Icons.close_rounded,
                color: Colors.black,
                size: MARGIN_40,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/bid_submitted_icon.png",
                      width: MediaQuery.of(context).size.width * 1 / 3,
                    ),
                    const SizedBox(height: MARGIN_MEDIUM_2),
                    Text(
                      "Your bid has been successfully submitted.",
                      textAlign: TextAlign.center,
                      style: knTitle().copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: MARGIN_LARGE),
                    Text(
                      "Thank you for participating in the auction and showing interest in the artwork. We will notify you if there are any updates or if you become the highest bidder. Good luck!",
                      textAlign: TextAlign.center,
                      style: knNormalText().copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                  left: MARGIN_MEDIUM_2,
                  right: MARGIN_MEDIUM_2,
                  bottom: MARGIN_MEDIUM_2,
                ),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    elevation: 0.8,
                    padding: const EdgeInsets.symmetric(vertical: MARGIN_MEDIUM_2),
                  ),
                  child: Text(
                    "View Details",
                    style: knNormalText().copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
