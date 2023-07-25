import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';

class KNRectangle extends StatelessWidget {
  const KNRectangle({super.key, required this.url, required this.text,required this.onTap});
  final String url;
  final String text;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap:onTap,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: kDividerColor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  url,
                  height: 30,
                  width: 30,
                ),
               const SizedBox(
                  height: 8,
                ),
                Text(text,style: TextStyle(fontSize: 12),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
