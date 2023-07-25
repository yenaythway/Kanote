
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

class DropdownFormStyleView extends StatelessWidget {
  const DropdownFormStyleView({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: null,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kHintTextColor,
          ),
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kHintTextColor,
          ),
          borderRadius: BorderRadius.circular(MARGIN_SMALL),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
          vertical: MARGIN_MEDIUM_2,
        ),
        hintText: "KMT(N)",
      ),
      items: ["KMT(N)", "SC(N)", "AHN(N)"].map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
      onChanged: (value) {

      },
    );
  }
}
