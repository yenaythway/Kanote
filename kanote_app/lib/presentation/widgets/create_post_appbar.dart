import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/font_manager.dart';

PreferredSizeWidget Appbar({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.black,
      ),
    ),
    title: Text(
      title,
      style: knSubTitle().copyWith(
        color: Color.fromRGBO(77, 77, 77, 1.0),
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
