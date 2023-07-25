import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/home_page.dart';
import 'package:kanote_app/presentation/login/forgot_password.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/signup/signup_page.dart';
import 'package:kanote_app/presentation/widgets/input_box.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/input_textfield.dart';
import 'package:kanote_app/presentation/widgets/text_input.dart';

import '../resources/font_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisiable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextInput(text: "Login to your Account"),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Don’t have an account? ",
                                      style: knNormalText(),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.pushReplacement(
                                            const SignupPage());
                                      },
                                      child: const Text(
                                        "Sign up",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    child: InputText(text: "Email Adress")),
                                SizedBox(
                                  height: MARGIN_CARD_MEDIUM_2,
                                ),
                                InputTextField(
                                  hintText: "Enter email",
                                  obscureText: false,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const InputText(text: "Password"),
                                const SizedBox(
                                  height: MARGIN_CARD_MEDIUM_2,
                                ),
                                InputTextField(
                                  hintText: "Enter password",
                                  obscureText: passwordVisiable,
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          passwordVisiable = !passwordVisiable;
                                        });
                                      },
                                      child: passwordVisiable
                                          ? const Icon(
                                              Icons.visibility_off_outlined)
                                          : const Icon(
                                              Icons.visibility_outlined)),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Column(
                                  children: [
                                    InputContainer(
                                      text: "Login",
                                      onPressed: () {
                                        context
                                            .pushReplacement(const HomePage());
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Forgot your password? ",
                                          style: knNormalText(),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context
                                                .push(const ForgotPassword());
                                          },
                                          child: const Text(
                                            "Reset here",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const InputBox(
                              text: "Continue with Google",
                              logo:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4RsUUFNlhToajrswwLMgNZXD3s6u6q7TVWg&usqp=CAU"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Or",
                            style: knNormalText(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const InputBox(
                            text: "Continue with Facebook",
                            logo:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6_IY167VvxTB92i2XatBmz5oeOMtiwGMjng&usqp=CAU",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
