import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:readmore/readmore.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const InputText(text: "About the artist"),
          const SizedBox(
            height: 12,
          ),
          const SizedBox(
            child: ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.werihowrbnviwbernihierbnvebhiafdlnkjadfiuharwlknfebihaerbnefbbhpebneifuhebne',
              trimLines: 3,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: ' Read less',
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
              lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 12,
          ),
          const InputText(text: "Contact infos"),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/map_icon.png",
                height: 17,
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Location"),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Yangon,Myanmar")
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/social_media.png",
                height: 17,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Social Media accounts’ links"),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Wai Lin"),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ-WnNJYnTo9KxO4_z8Sqx5oS7MZBD5mCf8Q&usqp=CAU",
                        height: 17,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("wailin123"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
