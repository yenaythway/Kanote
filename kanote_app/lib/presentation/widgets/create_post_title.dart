import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/font_manager.dart';

class CreatePostTitle extends StatelessWidget {
  String title;
  CreatePostTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: knTitle().copyWith(
        color: kPrimaryColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

// Widget title() => Text(
//       "Choose a photo",
//       style: knTitle().copyWith(
//         color: kPrimaryColor,
//         fontWeight: FontWeight.w700,
//       ),
//     );
// Widget (){
//   return Text(
//             "Choose a photo",
//             style: knTitle().copyWith(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
// }