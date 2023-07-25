import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/colors.dart';

List<String> imageList = [
  'https://cdn.pixabay.com/photo/2017/05/23/05/33/flower-2336287_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/07/03/20/17/colorful-2468874_1280.jpg',
];

class ImageSliderView extends StatefulWidget {
  const ImageSliderView({super.key});

  @override
  State<ImageSliderView> createState() => _ImageSliderViewState();
}

class _ImageSliderViewState extends State<ImageSliderView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 240,
            enableInfiniteScroll: true,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imageList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIndicator(
              currentIndex: _currentIndex,
              itemCount: imageList.length,
            ),
            const SizedBox(width: 10.0),
            Text("(${_currentIndex + 1} / ${imageList.length})"),
          ],
        ),
      ],
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  const CustomIndicator(
      {super.key, required this.currentIndex, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? sliderIndicatorActiveColor
                : sliderIndicatorInactiveColor,
          ),
        );
      }),
    );
  }
}
