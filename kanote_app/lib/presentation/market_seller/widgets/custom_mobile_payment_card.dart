import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/custom_textstyles.dart';

class CustomPaymentMethodsCard extends StatelessWidget {
  final String text;
  final String image;
  final int value;
  const CustomPaymentMethodsCard({
    super.key,
    required this.text, required this.image, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(4)),
        child: RadioListTile(
          secondary: Text("Edit",style: styleWithSendPurpleSmall(),),
            title: Row(
              children: [
                Image.asset(image,height: 20,width: 20,),
                const SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: styleWithGreyLarge(),
                  ),
                ),
              ],
            ),
            value: value,
            groupValue: 1,
            activeColor: secondaryPurpleColor,
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            onChanged: (value) {},
          ),
      ),
    );
  }
}
