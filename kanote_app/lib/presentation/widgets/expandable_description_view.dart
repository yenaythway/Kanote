import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class ExpandableDescriptionView extends StatefulWidget {
  final String description;

  const ExpandableDescriptionView({super.key, required this.description});

  @override
  State<ExpandableDescriptionView> createState() =>
      _ExpandableDescriptionViewState();
}

class _ExpandableDescriptionViewState extends State<ExpandableDescriptionView> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return widget.description.length < 200
        ? Text(
            widget.description,
            style: knNormalText().copyWith(
              color: kDarkLightColor,
              height: 1.5,
            ),
          )
        : isExpand
            ? InkWell(
                onTap: () {
                  setState(() {
                    isExpand = false;
                  });
                },
                child: Text(
                  widget.description,
                  style: knNormalText().copyWith(
                    color: kDarkLightColor,
                    height: 1.5,
                  ),
                ),
              )
            : InkWell(
                onTap: () {
                  setState(() {
                    isExpand = true;
                  });
                },
                child: RichText(
                  text: TextSpan(
                    text: "${widget.description.substring(0, 200)} ....",
                    style: knNormalText().copyWith(
                      color: kDarkLightColor,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: "See More",
                        style: knNormalText().copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}
