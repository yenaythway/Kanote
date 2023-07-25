import 'dart:async';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/signup/signup_page.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';

class OnboradingPage extends StatefulWidget {
  const OnboradingPage({super.key});

  @override
  State<OnboradingPage> createState() => _OnboradingPageState();
}

class _OnboradingPageState extends State<OnboradingPage> {
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
        child: Center(
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
                child: Center(
                  child: Text(
                    "Sell and Collect all kinds of \n arts here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryDarkColor,
                        fontSize: TEXT_REGULAR_3X,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                child: Center(
                  child: Text(
                      "With over 40000 arts of the local’s greatest \n artworks, paintings and doodles, anything"),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InputContainer(
                    onPressed: () {
                      context.push(const SignupPage());
                    },
                    text: "Get Started"),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: kPrimaryDarkColor)),
                    child: const Icon(
                      Icons.person_rounded,
                      size: 18,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      context.pushReplacement(const HomePage());
                    },
                    child: const Text(
                      "Continue as a guest",
                      style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontSize: TEXT_REGULAR_2X,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
