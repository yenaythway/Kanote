import 'package:flutter/material.dart';

class CustomArtworkImageWidget extends StatelessWidget {
  final double height;
  final double width;
  const CustomArtworkImageWidget({
    super.key, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFydHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
        height:height ,
        width:width ,
        fit: BoxFit.cover,
      ),
    );
  }
}