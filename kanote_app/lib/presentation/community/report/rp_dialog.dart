// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kanote_app/extensions/context_extensions.dart';
// import 'package:kanote_app/presentation/resources/colors.dart';
// import 'package:kanote_app/presentation/resources/dimens.dart';
// import 'package:kanote_app/presentation/resources/font_manager.dart';

// import 'report_page.dart';

// showReportDialog(BuildContext context, String title, String body) {
//   AlertDialog alert = AlertDialog(
//     insetPadding:
//         const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3, vertical: 24.0),
//     content: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           title,
//           textAlign: TextAlign.center,
//           style: knSubTitle().copyWith(
//             fontWeight: FontWeight.w600,
//             color: kPrimaryDarkColor,
//           ),
//         ),
//         const SizedBox(height: MARGIN_CARD_MEDIUM_2),
//         Text(
//           body,
//           textAlign: TextAlign.center,
//           style: knText13().copyWith(
//             color: kDescriptionColor,
//             height: 1.5,
//           ),
//         ),
//         const SizedBox(height: MARGIN_CARD_MEDIUM_2),
//         Row(
//           children: [
//             Expanded(
//               child: DialogButtonView(
//                 label: "No",
//                 borderColor: kDescriptionColor,
//                 backgroundColor: Colors.transparent,
//                 labelColor: kDescriptionColor,
//                 onTap: () {
//                   Get.back();
//                 },
//               ),
//             ),
//             const SizedBox(width: MARGIN_MEDIUM_2),
//             Expanded(
//               child: DialogButtonView(
//                 label: "Yes",
//                 borderColor: kPrimaryColor,
//                 backgroundColor: kPrimaryColor,
//                 labelColor: Colors.white,
//                 onTap: () {
//                   Get.to(ReportPage());
//                 },
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Stack(
//         children: [
//           Container(
//             color: Color.fromRGBO(32, 2, 51, 0.77),
//           ),
//           alert,
//           Positioned(
//             top: 300,
//             right: 15,
//             child: GestureDetector(
//               onTap: () => Get.back(),
//               child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),

//                           blurRadius: 5,

//                           offset: Offset(0, 3), // Offset in the form (dx, dy)
//                         ),
//                       ]),
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.black,
//                   )),
//             ),
//           ),
//         ],
//       ); //alert
//     },
//   );
// }

// class DialogButtonView extends StatelessWidget {
//   final String label;
//   final Color borderColor;
//   final Color backgroundColor;
//   final Color labelColor;
//   final Function onTap;

//   const DialogButtonView({
//     super.key,
//     required this.label,
//     required this.borderColor,
//     required this.backgroundColor,
//     required this.labelColor,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         onTap();
//       },
//       style: ElevatedButton.styleFrom(
//         padding: const EdgeInsets.symmetric(
//           horizontal: MARGIN_MEDIUM_3,
//           vertical: MARGIN_CARD_MEDIUM_2,
//         ),
//         backgroundColor: backgroundColor,
//         shadowColor: Colors.transparent,
//         shape: RoundedRectangleBorder(
//           side: BorderSide(color: borderColor),
//           borderRadius: BorderRadius.circular(MARGIN_SMALL),
//         ),
//       ),
//       child: Text(
//         label,
//         style: knNormalText().copyWith(
//           color: labelColor,
//         ),
//       ),
//     );
//   }
// }
