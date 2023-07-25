import 'package:flutter/material.dart';

import '../res/colors.dart';

class CustomButtonRow extends StatelessWidget {
  final Function() function1;
  final Function() function2;
  const CustomButtonRow({
    super.key,
    required this.function2,
    required this.function1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: function1,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50),
                backgroundColor: primaryColor,
                foregroundColor: deepPurpleColor,
                side: BorderSide(width: 1, color: dividerColor),
              ),
              child: const Text("Go To Back")),
        ),
        const SizedBox(
          width: 40,
        ),
        Expanded(
          child: ElevatedButton(
              onPressed: function2,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50),
                backgroundColor: secondaryPurpleColor,
                foregroundColor: primaryColor,
                side: BorderSide(width: 1, color: dividerColor),
              ),
              child: const Text("Next")),
        ),
      ],
    );
  }
}
