import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';

class SwitchArtLover extends StatefulWidget {
  const SwitchArtLover({super.key});

  @override
  State<SwitchArtLover> createState() => _SwitchArtLoverState();
}

class _SwitchArtLoverState extends State<SwitchArtLover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/close.png",
                  height: 25,
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/images/artlover.png",
                  height: 350,
                ),
              ),
              const SizedBox(
                child: Column(
                  children: [
                    Text(
                      "You’ve Returned back to the artlover account.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "You won’t be able to create sale, and auction post on the artlover mode but you can always be able to switch back into the artist mode.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              InputContainer(
                text: "Back to home screen",
                onPressed: () {
                   setState(() {
                  isArtist = false;
                  context.pushReplacement(const HomePage());
                });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
