import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class YourInsight extends StatelessWidget {
  const YourInsight({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Manage your community posts",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Bidding Results",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Your Action Results",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Your Rating",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Manage your sale posts",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Manage your community posts",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 50,
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffF6F2F9)),
            child:  Text("Manage followers",style: knSubTitle(),),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
