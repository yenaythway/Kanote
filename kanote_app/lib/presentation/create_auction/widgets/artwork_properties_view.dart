import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class ArtworkPropertiesView extends StatelessWidget {
  final String title;
  final String description;

  ArtworkPropertiesView({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: knNormalText(),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            description,
            style: knNormalText().copyWith(
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
