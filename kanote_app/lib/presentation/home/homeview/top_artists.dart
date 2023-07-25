import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
class TopArtists extends StatelessWidget {
  const TopArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 160,
              width: 157,
              child: Image.network(
                "https://images.unsplash.com/photo-1623082691619-f6cacbdaffa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height:MARGIN_MEDIUM ,),
         const Text(
            "Fitt Mhone Oo",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,letterSpacing:1),
          ),
          const SizedBox(height:MARGIN_SMALL ,),
         const Text("75 works . 500 followers",style: TextStyle(fontSize: 13),),
        ],
      ),
    );
  }
}