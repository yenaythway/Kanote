import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';

class ArtistRegistrationSuccess extends StatefulWidget {
  const ArtistRegistrationSuccess({super.key});

  @override
  State<ArtistRegistrationSuccess> createState() =>
      _ArtistRegistrationSuccessState();
}

class _ArtistRegistrationSuccessState extends State<ArtistRegistrationSuccess> {
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
                  "assets/images/art success.png",
                  height: 350,
                ),
              ),
              const SizedBox(
                child: Column(
                  children: [
                    Text(
                      "You’ve successfully switched into the artist account.",
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
                      "Now you can be able to sell your artworks on the Kanote art platform! Artist mode can sell not only artworks but also if you are verified on the Kanote platform,you can held auctions as well.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              InputContainer(text: "Back to home screen", onPressed: () {
                 setState(() {
                  isArtist = true;
                  context.pushReplacement( const HomePage());
                });
                
              })
            ],
          ),
        ),
      ),
    );
  }
}
