import 'package:flutter/material.dart';

class BidArtImageView extends StatelessWidget {
  const BidArtImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://images.unsplash.com/photo-1615184697985-c9bde1b07da7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHx8&w=1000&q=80",
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}