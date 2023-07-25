import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../community/detail_photo.dart/detail_photo.dart';
import 'choose_layout_page.dart';

class CreateController extends GetxController {
  RxBool isArtlover = false.obs;
  RxInt currentWidget = 1.obs;
  // Rx<Widget> currentWidget1 = Container(
  //   color: Colors.blue,
  //   width: 100.0,
  //   height: 100.0,
  // ).obs;

  void changeWidget(int widget) {
    currentWidget.value = widget;
    // print(currentWidget.value);
  }
  // Widget columnLayout({required double? spaceBetweenImages}) {
  //   return Container(
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Expanded(
  //               child: GestureDetector(
  //                   onTap: () => Get.to(DetailPhoto()),
  //                   child: ImageContainer(
  //                     height: 127,
  //                     width: 222,
  //                   )
  //                   // Container(
  //                   //   height: 172,
  //                   //   width: 187,
  //                   //   child: ClipRRect(
  //                   //     borderRadius: BorderRadius.circular(10),
  //                   //     child: Image.asset(
  //                   //       "assets/images/post_image.png",
  //                   //       fit: BoxFit.cover,
  //                   //     ),
  //                   //   ),
  //                   // ),
  //                   ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             GestureDetector(
  //               onTap: () => Get.to(DetailPhoto()),
  //               child: ImageContainer(
  //                 height: 127,
  //                 width: 108,
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           height: spaceBetweenImages,
  //         ),
  //         Row(
  //           children: [
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget classicLayout({required double? spaceBetweenImages}) {
  //   return Container(
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Expanded(
  //               child: GestureDetector(
  //                   onTap: () => Get.to(DetailPhoto()),
  //                   child: ImageContainer(
  //                     height: 127,
  //                     width: 222,
  //                   )
  //                   // Container(
  //                   //   height: 172,
  //                   //   width: 187,
  //                   //   child: ClipRRect(
  //                   //     borderRadius: BorderRadius.circular(10),
  //                   //     child: Image.asset(
  //                   //       "assets/images/post_image.png",
  //                   //       fit: BoxFit.cover,
  //                   //     ),
  //                   //   ),
  //                   // ),
  //                   ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             GestureDetector(
  //               onTap: () => Get.to(DetailPhoto()),
  //               child: ImageContainer(
  //                 height: 127,
  //                 width: 108,
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           height: spaceBetweenImages,
  //         ),
  //         Row(
  //           children: [
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //             SizedBox(
  //               width: spaceBetweenImages,
  //             ),
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => Get.to(DetailPhoto()),
  //                 child: ImageContainer(
  //                   height: 127,
  //                   width: 108,
  //                 ),
  //               ),
  //               // Container(
  //               //   height: 136,
  //               //   width: 108,
  //               //   decoration: BoxDecoration(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //   ),
  //               //   child: ClipRRect(
  //               //     borderRadius: BorderRadius.circular(10),
  //               //     child: Image.asset(
  //               //       "assets/images/post_image.png",
  //               //       fit: BoxFit.cover,
  //               //     ),
  //               //   ),
  //               // ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget bannerLayout({required double? spaceBetween}){
  //   return Container(
  //     child: Row(
  //       children: [
  //         Column(
  //           children: [
  //             ImageContainer(
  //               height: 157,
  //               width: 222,
  //             ),
  //             SizedBox(
  //               height: spaceBetween,
  //             ),
  //             ImageContainer(
  //               height: 157,
  //               width: 222,
  //             )
  //           ],
  //         ),
  //         SizedBox(
  //           width: spaceBetween,
  //         ),
  //         Expanded(
  //           child: Column(
  //             children: [
  //               ImageContainer(
  //                 height: 102,
  //                 width: 105,
  //               ),
  //               SizedBox(
  //                 height: spaceBetween,
  //               ),
  //               ImageContainer(
  //                 height: 102,
  //                 width: 105,
  //               ),
  //               SizedBox(
  //                 height: spaceBetween,
  //               ),
  //               ImageContainer(
  //                 height: 102,
  //                 width: 105,
  //               )
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
