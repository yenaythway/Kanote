import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class MobileBankingView extends StatelessWidget {
  const MobileBankingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_CARD_MEDIUM_2,
        vertical: MARGIN_MEDIUM,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        children: [
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(
                checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(MARGIN_SMALL),
                      ),
                    ),
              ),
              child: CheckboxListTile(
                dense: true,
                controlAffinity: ListTileControlAffinity.leading,
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "assets/images/aya_pay.png",
                      width: 25,
                    ),
                    const SizedBox(width: MARGIN_MEDIUM),
                    Text(
                      "AYA Pay",
                      style: knNormalText(),
                    ),
                  ],
                ),
                value: false,
                onChanged: (value) {},
              ),
            ),
          ),
          Text(
            "Edit",
            style: knNormalText().copyWith(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
