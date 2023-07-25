import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/community_page.dart';
import 'package:kanote_app/presentation/create_auction/create_a_post.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/home/profile/artist_registration_susseful.dart';
import 'package:kanote_app/presentation/home/profile/switch_artlover.dart';
import 'package:kanote_app/presentation/inbox/inbox_page.dart';
import 'package:kanote_app/presentation/market/market_page.dart';
import 'package:kanote_app/presentation/splash/splash_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          fontFamily: "Poppins",
        ),
        home: SplashPage() //,Slider()
        );
  }
}

class Slider extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  //const Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            aspectRatio: 16 / 9,
            viewportFraction: 1.2, //0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            padEnds: false,
            // reverse: false,
            // autoPlay: true,
            // autoPlayInterval: Duration(seconds: 3),
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            enlargeFactor: 0.3,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          carouselController: buttonCarouselController,
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        )),
                    ElevatedButton(
                      onPressed: () => buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear),
                      child: Text('→'),
                    )
                  ],
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Botton extends StatelessWidget {
  const Botton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: GestureDetector(
                    child: const Text('Community'),
                    onTap: () => Get.to(const Community_page())),
              ),
              Expanded(
                child: GestureDetector(
                    child: const Text('Inbox'),
                    onTap: () => Get.to(Inbox_page())), //ChatScreenUI()
              ),
              Expanded(
                child: GestureDetector(
                    child: const Text('Market'),
                    onTap: () => Get.to(const MarketPage())),
              ),
              Expanded(
                child: GestureDetector(
                    child: const Text('Create post'),
                    onTap: () => Get.to(const CreateAPost())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
