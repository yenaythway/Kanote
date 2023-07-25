import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/onborading/onborading_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';

class IntroducingPage extends StatefulWidget {
  const IntroducingPage({super.key});

  @override
  State<IntroducingPage> createState() => _IntroducingPageState();
}

class _IntroducingPageState extends State<IntroducingPage> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          contents[index].title,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          child: Image.asset(contents[index].image),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    contents.length,
                                    (index) => buildDot(index, context),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(contents[index].discription),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.pushReplacement(const OnboradingPage());
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all()),
                      child: const Center(
                        child: Text("Skip"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (currentIndex == contents.length - 1) {
                        context.pushReplacement(const OnboradingPage());
                      }
                      _controller!.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kPrimaryColor,
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 64 : 32,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: currentIndex == index ? kPrimaryColor : kDividerColor,
      ),
    );
  }
}

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: "Embrace the Burmese Art Market: Buy and Sell with Kanote",
    image: "assets/images/intro_image1.jpg",
    discription:
        "Our art platform empowers art enthusiasts to effortlessly buy and sell artworks from all corners of Burma, all within the convenience of an online platform",
  ),
  UnbordingContent(
      title: "Engage in Artistic Auctions: Host, Bid, and Win with Kanote",
      image: "assets/images/intro_image2.jpg",
      discription:
          "Our art platform enables artists to host captivating auctions for a specific duration, while art lovers can actively participate and place bids on their desired artworks."),
  UnbordingContent(
      title:
          "Discover Art Nearby: Find Galleries and Exhibitions with Ease on Kanote",
      image: "assets/images/intro_image3.jpg",
      discription:
          "Our application provides users with a seamless way to find and access information about nearby galleries and exhibitions."),
  UnbordingContent(
      title:
          "Unleash Your Creativity: Connect and Share in the Kanote Art Community",
      image: "assets/images/intro_image4.jpg",
      discription:
          "Our community feature is designed to bring together art enthusiasts from across Myanmar. Seamlessly post and share artworks to foster a thriving community."),
];
