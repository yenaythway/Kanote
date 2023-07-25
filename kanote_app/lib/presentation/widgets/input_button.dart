import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class InputContainer extends StatelessWidget {
  const InputContainer(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final GestureTapCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: kDividerColor, fontSize: TEXT_REGULAR),
        )),
      ),
    );
  }
}
