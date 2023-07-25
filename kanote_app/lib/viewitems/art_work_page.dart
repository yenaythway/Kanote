

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../presentation/widgets/tile.dart';

class ArtWorkPage extends StatefulWidget {
  const ArtWorkPage({super.key});

  @override
  State<ArtWorkPage> createState() => _ArtWorkPageState();
}

class _ArtWorkPageState extends State<ArtWorkPage> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 6,
      crossAxisSpacing: 25,
      itemBuilder: (context, index) {
        return Tile(
          index: index,
        );
      }, gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
