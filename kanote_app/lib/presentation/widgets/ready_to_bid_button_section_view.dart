import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';

class ReadyToBidButtonSectionView extends StatelessWidget {
  final Function onTap;
  final String label;
  final bool isShowShadow;

  const ReadyToBidButtonSectionView({
    super.key,
    required this.onTap,
    required this.label,
    this.isShowShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_CARD_MEDIUM_2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: isShowShadow
            ? [
                const BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, -1),
                ),
              ]
            : null,
      ),
      child: KnButtonView(
        label: label,
        onTap: () {
          onTap();
        },
      ),
    );
  }
}
