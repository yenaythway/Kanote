import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/colors.dart';
import '../resources/dimens.dart';
import 'create_post_button_view.dart';

class Next extends StatelessWidget {
  var next;
  Next({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_2,
      ),
      child: Row(
        children: [
          Expanded(
            child: CreatePostButtonView(
              ontap: () => Get.back(),
              label: "Go to back",
              labelColor: Color.fromRGBO(107, 106, 106, 1.0),
              backgroundColor: Colors.white,
              borderColor: Color.fromRGBO(77, 77, 77, 1.0),
            ),
          ),
          SizedBox(width: MARGIN_MEDIUM_3),
          Expanded(
            child: CreatePostButtonView(
              ontap: () => Get.to(next),
              label: "Next",
              labelColor: Colors.white,
              backgroundColor: kPrimaryColor,
              borderColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
