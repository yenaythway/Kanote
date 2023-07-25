import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/login/login_page.dart';
import 'package:kanote_app/presentation/onborading/explore_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/input_box.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/input_textfield.dart';

import '../resources/dimens.dart';
import '../widgets/text_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextInput(text: "Create an Account"),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("As an Art Lover",style: TextStyle(fontSize: 16,color: kDarkLightColor),)
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
                                  hintText: "Enter email or phone",
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
                                      text: "Sign Up",
                                      onPressed: () {
                                        context.pushReplacement(
                                            const ExplorePage());
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
                                          "Already have an account? ",
                                          style: knNormalText(),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.pushReplacement(
                                                const LoginPage());
                                          },
                                          child: const Text(
                                            "Login",
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
