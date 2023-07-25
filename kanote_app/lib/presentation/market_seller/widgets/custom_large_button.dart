import 'package:flutter/material.dart';

import '../res/colors.dart';

class CustomLargeButton extends StatelessWidget {
  final String title;
  final Function() function;
  const CustomLargeButton({
    super.key,
    required this.title, required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:function,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 50),
          backgroundColor: secondaryPurpleColor,
          foregroundColor: primaryColor,
          side: BorderSide(width: 1, color: dividerColor),
        ),
        child: Text(title));
  }
}
