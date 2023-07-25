import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),);
  }
}