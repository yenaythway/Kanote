import 'package:flutter/material.dart';

import '../../res/custom_textstyles.dart';

class AdressInfoDetailView extends StatelessWidget {
  const AdressInfoDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(color: Color(0xfff7f2f9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Your Address",
              style: styleWithDeePurpleBold(),
            ),
            trailing: Text(
              "Edit",
              style: styleWithSendPurpleSmall(),
            ),
          ),
                    const CustomContactInfoRow(
            text1: "Full Name",
            text2: "Toe Htet Delbin",
          ),
          const SizedBox(
            height: 10,
          ),
                    const CustomContactInfoRow(
            text1: "City",
            text2: "Mandalay",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomContactInfoRow(
            text1: "Ph Number",
            text2: "09796037249",
          ),
          const SizedBox(
            height: 10,
          ),
                    const CustomContactInfoRow(
            text1: "Address",
            text2: "63 street, 36*28street, Mandalay, Myanmar",
          ),
        ],
      ),
    );
  }
}

class CustomContactInfoRow extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomContactInfoRow({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(text1,
                      style: styleWithGreyLarge(), textAlign: TextAlign.start,overflow: TextOverflow.ellipsis,),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(":",
                    style: styleWithGreyLarge(), textAlign: TextAlign.start)
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              text2,
              style: styleWithGreyLarge(),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
