import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/onborading/introduction_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // late final Timer timer;

  final vactors = [
    "assets/images/Vector.png",
    "assets/images/Vector white.png",
  ];
  final colorList = [kDividerColor, kPrimaryColor];
  final textStyleList = [
    const TextStyle(
        color: kPrimaryColor, fontSize: TEXT_BIG, fontWeight: FontWeight.bold),
    const TextStyle(
        color: kDividerColor, fontSize: TEXT_BIG, fontWeight: FontWeight.bold),
  ];
  final styleList = [
    const TextStyle(fontSize: TEXT_REGULAR, color: kPrimaryColor, letterSpacing: 3),
    const TextStyle(fontSize: TEXT_REGULAR, color: kDividerColor, letterSpacing: 3),
  ];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _index++;
      });
      Timer(const Duration(seconds: 2), () {
       context.pushReplacement(const IntroducingPage());
      });
    });
  }

  // @override
  // void dispose() {
  //   timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: colorList[_index % colorList.length],
            key: UniqueKey(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  vactors[_index % vactors.length],
                  key: UniqueKey(),
                ),
                Text(
                  "KANOTE",
                  key: UniqueKey(),
                  style: textStyleList[_index % textStyleList.length],
                ),
                Text(
                  "Art Plaform",
                  style: styleList[_index % styleList.length],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
