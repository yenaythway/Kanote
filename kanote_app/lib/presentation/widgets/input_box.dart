import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key, required this.text, required this.logo});
  final String text;
  final String logo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){} ,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(),
            borderRadius: BorderRadius.circular(6),),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(logo,),
            const SizedBox(
              width: 8,
            ),
            Text(text,style: knNormalText(),)
          ],
        ),
      ),
    );
  }
}
