import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class CurrentAution extends StatelessWidget {
  const CurrentAution({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 195,
              width: 275,
              child: Image.network(
                "https://images.unsplash.com/photo-1623082691619-f6cacbdaffa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height:MARGIN_MEDIUM ,),
        const  Text(
            "LAMA: Prints & Multiples",
            style: TextStyle(fontSize:18,fontWeight: FontWeight.w500 ),
          ),
          const SizedBox(height:MARGIN_SMALL ,),
         const Text("By Hnin Cherry"),
          const SizedBox(height:MARGIN_SMALL ,),
         const Text(
            "Bid starts from 10000mmk",
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}