import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/community_page.dart';

import '../../home/home_page.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        title: Text(
          "Report",
          style: TextStyle(color: Color.fromRGBO(77, 77, 77, 1)),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Why are you reporting this?",
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ), //
              Text(
                "Your report is anonymous, and it helps us to improve our processes and keeps Kanote safe for everyone.",
                style: TextStyle(
                  color: Color.fromRGBO(77, 77, 77, 1),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Report an issue",
                style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 7,
                maxLength: 280,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText:
                        "Tell me about why u are reporting this post ......",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(145, 139, 148, 1), fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(145, 139, 148, 1))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(145, 139, 148, 1)))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                    showDialog(
                        context: context,
                        builder: (context) => AfterReportBox());
                  }, //,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(122, 13, 190, 1),
                    elevation: 0,
                    // padding: EdgeInsets.symmetric(
                    //     // vertical: MediaQuery.of(context).size.width),
                    //     horizontal: MediaQuery.of(context).size.width)
                  ),
                  child: Text("Submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AfterReportBox extends StatelessWidget {
  const AfterReportBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          shadowColor: Color.fromRGBO(148, 121, 166, 0.46),
          title: Text(
            "Thanks for reporting this post",
            style: TextStyle(
                color: Color.fromRGBO(51, 33, 62, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          content: Text(
            "Your feedback is important in helping us keep the Kanote community safe.",
            style: TextStyle(
                color: Color.fromRGBO(77, 77, 77, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ), //
        ),
        Positioned(
            top: 340,
            right: 45,
            child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                )))
      ],
    );
  }
}
