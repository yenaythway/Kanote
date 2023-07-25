import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/profile/artist_registration_susseful.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/input_button.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/input_textfield.dart';

import 'payment_information.dart';

class ArtistRegistration extends StatefulWidget {
  const ArtistRegistration({super.key});

  @override
  State<ArtistRegistration> createState() => _ArtistRegistrationState();
}

class _ArtistRegistrationState extends State<ArtistRegistration> {
  bool light = false;
  int? groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Artist Registration", style: knTitle()),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Artist Registration",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 252,
                    child: Text(
                      "Would you like to sell your artworks? If so, please register yourself as an artist.",
                      style: TextStyle(
                          color: Color(0xff696969),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  FlutterSwitch(
                    width: 60.0,
                    height: 30.0,
                    valueFontSize: 12.0,
                    toggleSize: 26.0,
                    activeColor: kPrimaryColor,
                    value: light,
                    toggleBorder: Border.all(
                      color: kPrimaryColor,
                      width: 1.0,
                    ),
                    onToggle: (val) {
                      setState(() {
                        light = val;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const InputText(text: "Legal name*"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "Add your name"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                child: Text(
                  "A legal name is the name you use for legal, administrative and all official purposes. It should be the same as the name of the bank account that you used for payout.",
                  style: TextStyle(
                    color: Color(0xff777171),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Artworks Categories*"),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Medium*"),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Phone number*"),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [Container()],
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Adress"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "Add your adress"),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "City"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "Add your city"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 300,
                    child: Text(
                        "Would yuou like to add  your payment imforation?"),
                  ),
                  Expanded(
                    child: Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: 0,
                        groupValue: groupValue,
                        onChanged: (newValue) {
                          setState(() => groupValue = newValue);
                          context.push(const PaymentInformation());
                        },
                        activeColor: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Text("(This process is optional)"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Don't worry about your privacy, Kanote won't shrae any of your personal details to anyone",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              InputContainer(text: "Register as an artist", onPressed: () {
               
                context.pushReplacement(ArtistRegistrationSuccess());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
