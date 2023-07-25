import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class AttachFileView extends StatelessWidget {

  final Function onTap;


  const AttachFileView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: DottedBorder(
        color: Colors.grey,
        padding: EdgeInsets.zero,
        borderType: BorderType.RRect,
        radius: const Radius.circular(MARGIN_SMALL),
        dashPattern: const [5, 3],
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: MARGIN_CARD_MEDIUM_2),
          color: const Color.fromRGBO(246, 242, 249, 1.0),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Attach file",
                style: knNormalText().copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: MARGIN_MEDIUM),
              const Icon(
                Icons.file_copy_rounded,
                color: Colors.grey,
                size: MARGIN_MEDIUM_3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
