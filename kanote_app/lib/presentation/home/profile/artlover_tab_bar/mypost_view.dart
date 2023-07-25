import 'package:flutter/material.dart';

class MyPosts extends StatelessWidget {
  const MyPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: const Text("Manage your community posts"),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(left: 12),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: const Color(0xffF6F2F9)),
          child: const Text("Bidding Results"),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
