import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List imageList = [
   "assets/images/Frame.png",
     "assets/images/Frame.png",
      "assets/images/Frame.png",
       "assets/images/Frame.png",
    // "assets/images/Frame.png",
    // "assets/images/Vector white.png",
    // "assets/images/Vector.png",
    // "assets/images/sort.png",
  ];
  int index = 0;
  late final Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        imageIndicatorPostion();
      });
      // print(index);
    });
    super.initState();
  }

  int imageIndicatorPostion() {
    if (index == imageList.length - 1) {
      index = 0;
      return index;
    }
    return index++;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Vector.png",
                height: MARGIN_XXLARGE,
              ),
              const Text(
                "KANOTE",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: TEXT_HEADING_1X,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                color: const Color.fromARGB(255, 240, 225, 243),
                child: const Text(
                  "Art Plaform",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: TEXT_SMALL,
                      letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  key: UniqueKey(),
                  child: Image.asset(
                    imageList[index % imageList.length],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              DotsIndicator(
                dotsCount: imageList.length,
                position: index,
                decorator: const DotsDecorator(
                  color: Color.fromARGB(221, 201, 201, 201), // Inactive color
                  activeColor: kPrimaryColor,
                ),
              ),
                const SizedBox(
                height: 16,
              ),
              const SizedBox(
                child: Text(
                  "Start explore artworks in the app!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kPrimaryDarkColor,
                      fontSize: TEXT_REGULAR_3X,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                child: Text(
                    "Captionx captionx captionx captionx ca ptionx captionx cfvfkhj cap[tionx."),
              ),
              const SizedBox(
                height: 20,
              ),
              InputContainer(
                  onPressed: () {
                    context.push(const HomePage());
                  },
                  text: "Explore Now"),
            ],
          ),
        ),
      ),
    );
  }
}