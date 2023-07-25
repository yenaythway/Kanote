import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/login/verification.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/input_textfield.dart';
import 'package:kanote_app/presentation/widgets/text_input.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              const TextInput(text: "Forgot Password?"),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                child: Text(
                  "Enter the email address associated with your account.",
                  style: knNormalText(),
                ),
              ),
              const SizedBox(height: MARGIN_XXLARGE),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(child: InputText(text: "Email Adress")),
                  SizedBox(
                    height: MARGIN_CARD_MEDIUM_2,
                  ),
                  InputTextField(
                    hintText: "Enter email",
                    obscureText: false,
                  ),
                ],
              ),
              const SizedBox(
                height: MARGIN_XLARGE,
              ),
              InputContainer(
                text: "Send",
                onPressed: () {
                  context.push(const Verification());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
