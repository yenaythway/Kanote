import 'package:flutter/material.dart';

import '../resources/colors.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final String label;
  final String iconPath;
  final String activeIconPath;
  final bool isActive;

  CustomBottomNavigationBarItem({
    required this.label,
    required this.iconPath,
    required this.activeIconPath,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          isActive ? activeIconPath : iconPath,
          height: 20,
          width: 20,
        ),
        SizedBox(height: 4), // Adjust the height between icon and label
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: isActive ? kPrimaryColor : Colors.black,
          ),
        ),
      ],
    );
  }
}
