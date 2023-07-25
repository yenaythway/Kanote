import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

import '../../res/colors.dart';
import '../../widgets/custom_textfiled.dart';

class AdrdessInfoFillingView extends StatelessWidget {
  const AdrdessInfoFillingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Your Address",
            style: styleWithSecondPurpleLarge(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Full Name",style: styleWithDeePurpleBold(),),
          const SizedBox(
            height: 10,
          ),
          const CutomTextfieldWidget(hintText: "Add your full name"),
          const SizedBox(
            height: 20,
          ),
          Text("City",style: styleWithDeePurpleBold(),),
          const SizedBox(
            height: 10,
          ),
          const CutomTextfieldWidget(hintText: "Add your city"),
          const SizedBox(
            height: 20,
          ),
          Text("Phone Number",style: styleWithDeePurpleBold()),
          const SizedBox(
            height: 10,
          ),
          const CutomTextfieldWidget(hintText: "Add your phone number",),
          const SizedBox(
            height: 20,
          ),
          Text("Address 1",style: styleWithDeePurpleBold()),
          const SizedBox(
            height: 10,
          ),
          const CutomTextfieldWidget(hintText: "Add your address",),
          const SizedBox(
            height: 20,
          ),
          Text("Address 2 (opitional)",style: styleWithDeePurpleBold()),
          const SizedBox(
            height: 10,
          ),
          const CutomTextfieldWidget(hintText: "Add your address",),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
             Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(color: secondaryPurpleColor)
              ),
             ),
             const SizedBox(width: 10,),
             Text("Save shipping address for later use",style: styleWithGreyLarge(),)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

