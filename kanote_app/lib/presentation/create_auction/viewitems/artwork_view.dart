import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class ArtworkView extends StatelessWidget {
  const ArtworkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(175, 177, 182, 1.0),
          width: 2
        ),
        borderRadius: BorderRadius.circular(MARGIN_CARD_MEDIUM_2),
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1615184697985-c9bde1b07da7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
          ),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
