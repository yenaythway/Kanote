import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/input_text.dart';
import 'package:kanote_app/presentation/widgets/input_textfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        title: Text("Edit Profile", style: knTitle()),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Profile Setting",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: SizedBox(
                      width: 132,
                      height: 132,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1623082691619-f6cacbdaffa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Choose an Photo",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Username"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "@wutthmone503"),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Full Name"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "Add your full name"),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "About Yourself"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 7,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                    isDense: true,
                    hintText: "add your bio",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    filled: true),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Email Adress"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: false, hintText: "Add your full name"),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Change Password"),
              const SizedBox(
                height: 10,
              ),
              const InputTextField(
                  obscureText: true, hintText: "Add your full name"),
              const SizedBox(
                height: 20,
              ),
              const InputText(text: "Social Media Account Links"),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xffF6F2F9)),
                    child: const Center(
                      child: Icon(Icons.abc),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xffF6F2F9)),
                    child: const Center(
                      child: Icon(Icons.abc),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xffF6F2F9)),
                    child: const Center(
                      child: Icon(Icons.abc),
                    ),
                  )
                ],
              ),
            const  SizedBox(height: 50,),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                    
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all()),
                      child: const Center(
                        child: Text("Cancle"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kPrimaryColor,
                      ),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
