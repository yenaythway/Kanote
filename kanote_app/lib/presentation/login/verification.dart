import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/text_input.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: kPrimaryDarkColor,
                  size: MARGIN_XLARGE,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextInput(text: "Verification"),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                child: Text(
                  "Enter the verification code we just sent you on your email address.",
                  style: knNormalText(),
                ),
              ),
              const SizedBox(height: MARGIN_XXLARGE),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(child: InputText(text: "Code")),
                  const SizedBox(
                    height: MARGIN_MEDIUM,
                  ),
                  VerificationCode(
                    length: 6,
                    itemSize: 45,
                    cursorColor: kDarkLightColor,
                    fullBorder: true,
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                    ),
                    keyboardType: TextInputType.number,
                    margin: const EdgeInsets.all(4),
                    underlineColor: kPrimaryDarkColor,
                    onCompleted: (value) {},
                    onEditing: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: MARGIN_XLARGE,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputContainer(
                    text: "Verify COde",
                    onPressed: () {
                      context.pushReplacement(
                        const HomePage(),
                      );
                    },
                  ),
                 const SizedBox(height: 10,),
                   InkWell(
                onTap: () {},
                child: const Text(
                  "Resend Code?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
