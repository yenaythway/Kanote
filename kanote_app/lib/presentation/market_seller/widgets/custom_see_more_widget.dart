import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

class CustomSeeMoreWidget extends StatefulWidget {
  final String text;
  final int maxLines;

  const CustomSeeMoreWidget({super.key, required this.text, this.maxLines = 2});

  @override
  State<CustomSeeMoreWidget> createState() => _CustomSeeMoreWidgetState();
}

class _CustomSeeMoreWidgetState extends State<CustomSeeMoreWidget> {
  bool showFullText = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: showFullText ? 100 : widget.maxLines,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              showFullText = !showFullText;
            });
          },
          child: Text(showFullText ? 'See Less' : 'See More',
              style: styleWithSendPurpleSmall(),),
        )
      ],
    );
  }
}
