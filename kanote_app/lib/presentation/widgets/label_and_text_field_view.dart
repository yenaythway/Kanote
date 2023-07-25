import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/attach_file_view.dart';
import 'package:kanote_app/presentation/widgets/form_style_view.dart';


class LabelAndTextFieldView extends StatelessWidget {
  final String label;
  final String hintText;
  final Widget? suffixIcon;
  final int maxLine;
  final int? minLine;
  final bool canSwitchUsername;
  final bool isRequiredField;
  final bool isFileChooseField;
  final Function? onChooseFile;
  final bool isDropdown;
  final List<String> dropdownList;
  final String dropdownValue;

  const LabelAndTextFieldView({
    super.key,
    required this.label,
    this.hintText = "",
    this.suffixIcon,
    this.maxLine = 1,
    this.minLine,
    this.canSwitchUsername = false,
    this.isRequiredField = false,
    this.isFileChooseField = false,
    this.onChooseFile,
    this.isDropdown = false,
    this.dropdownList = const [],
    this.dropdownValue = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    label,
                    style: knSubTitle().copyWith(
                      fontWeight: FontWeight.w500,
                      color: kDescriptionColor,
                    ),
                  ),
                  Visibility(
                    visible: isRequiredField,
                    child: Text(
                      "*",
                      style: knNormalText().copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: canSwitchUsername,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: MARGIN_MEDIUM,
                  vertical: MARGIN_SMALL,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(246, 242, 249, 1.0),
                    borderRadius: BorderRadius.circular(MARGIN_MEDIUM_2),
                    border: Border.all(
                      color: const Color.fromRGBO(233, 232, 232, 1.0),
                    )),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/switch_icon.png",
                      width: 17,
                    ),
                    const SizedBox(width: MARGIN_SMALL),
                    Text(
                      "Switch to username",
                      style: knText13().copyWith(
                        color: const Color.fromRGBO(118, 102, 102, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: MARGIN_MEDIUM),
        !isFileChooseField
            ? !isDropdown
                ? FormStyleView(
                    hintText: hintText,
                    suffixIcon: suffixIcon,
                    maxLine: maxLine,
                    minLine: minLine,
                  )
                : DropdownButtonView(dropdownList: dropdownList)
            : AttachFileView(
                onTap: () {
                  onChooseFile!();
                },
              ),
      ],
    );
  }
}

class DropdownButtonView extends StatelessWidget {
  const DropdownButtonView({
    super.key,
    required this.dropdownList,
  });

  final List<String> dropdownList;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
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
          hintText: "Select",
          hintStyle: knText13().copyWith(
            color: Colors.grey,
          )
        ),
        value: null,
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
        ),
        items: dropdownList.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: knNormalText(),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      );
  }
}
