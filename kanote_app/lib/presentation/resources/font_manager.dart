import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';

TextStyle knTitle() {
  return const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: TEXT_REGULAR_3X,
  );
}

TextStyle knText13() {
  return const TextStyle(
    color: Colors.white,
    fontSize: TEXT_13,
  );
}

TextStyle knNormalText() {
  return const TextStyle(
    fontFamily: "Poppins",
    color: Colors.black,
    fontSize: TEXT_REGULAR,
  );
}

TextStyle knTextSmall() {
  return const TextStyle(
    color: Colors.black,
    fontSize: TEXT_SMALL,
  );
}

TextStyle knSubTitle() {
  return const TextStyle(
    color: Colors.black,
    fontSize: TEXT_REGULAR_2X,
    fontWeight: FontWeight.w600,
  );
}