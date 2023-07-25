import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class DateFormFieldView extends StatelessWidget {
  final String hintText;
  final bool isDate;
  final Icon suffixIcon;
  final Function(DateTime) onDateSelected;

  const DateFormFieldView({super.key, 
    required this.hintText,
    this.isDate = true,
    required this.suffixIcon,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
        ),
      ),
      child: DateTimeFormField(
        dateTextStyle: knText13().copyWith(
          color: Colors.black,
        ),
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
            horizontal: MARGIN_MEDIUM,
            vertical: MARGIN_MEDIUM_2,
          ),
          hintText: hintText,
          hintStyle: knNormalText().copyWith(color: kHintTextColor),
          suffixIcon: suffixIcon,
        ),
        mode: isDate ? DateTimeFieldPickerMode.date : DateTimeFieldPickerMode.time,
        onDateSelected: (DateTime value) {

        },
      ),
    );
  }
}
