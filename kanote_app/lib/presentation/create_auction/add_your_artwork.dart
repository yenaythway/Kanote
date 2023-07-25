import 'package:flutter/material.dart';

import '../widgets/create_bot_button.dart';
import '../widgets/create_post_appbar.dart';
import '../widgets/create_post_title.dart';
import 'addartworkinfo.dart';
import 'pages/choose_photo_page.dart';

class AddYourArtwork extends StatelessWidget {
  const AddYourArtwork({super.key});
  Widget _tfield({required title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
      child: TextField(
        cursorColor: Colors.black,
        maxLines: 1,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(183, 169, 191, 1))),
          hintText: title,
          hintStyle: TextStyle(
              color: Color.fromRGBO(145, 139, 148, 1),
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _title({required String title, required bool flag}) {
    return RichText(
      text: TextSpan(
        text: title,
        children: [
          flag
              ? TextSpan(
                  text: '*',
                  style: TextStyle(color: Color.fromRGBO(189, 38, 38, 1)))
              : TextSpan(text: '')
        ],
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(51, 33, 62, 1)),
      ),
    );
  }

  Widget _period({required String text, required IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Color.fromRGBO(173, 171, 171, 1),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Color.fromRGBO(145, 139, 148, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Icon(
                    icon,
                    color: Color.fromRGBO(77, 77, 77, 1),
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(title: "Create an auction post"),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSectionView(
                num: 2,
                title: "Add your artwork ",
              ),
              SizedBox(
                height: 20,
              ),
              _title(title: "Artwork Title", flag: false),
              _tfield(title: "Add artwork title"),
              _title(title: "Start Bid Amount ( Ground Price )", flag: false),
              _tfield(title: "200000ks"),
              RichText(
                text: TextSpan(
                  text: "Bid Increment Per Bid",
                  children: [
                    TextSpan(
                        text: '( at least )',
                        style:
                            TextStyle(color: Color.fromRGBO(122, 13, 190, 1)))
                  ],
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromRGBO(51, 33, 62, 1)),
                ),
              ),
              _tfield(title: "Add bid increment"), //Auction Periods
              _title(title: "Auction Periods", flag: false),
              Row(
                children: [
                  Column(children: [
                    _period(
                      text: "Start date",
                      icon: Icons.calendar_month,
                    ),
                    _period(
                      text: "End date",
                      icon: Icons.calendar_month,
                    ),
                  ]),
                  Expanded(
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  Column(
                    children: [
                      _period(
                          text: "Open time", icon: Icons.watch_later_outlined),
                      _period(
                          text: "Close time", icon: Icons.watch_later_outlined)
                    ],
                  )
                ],
              ),
              //Add your adress
              _title(title: "Artwork description", flag: false),
              _tfield(title: "Add your adress"),
              _title(title: "Artwork Signature", flag: false),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color.fromRGBO(173, 171, 171, 1),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: 100, top: 13, right: 13, left: 13),
                  child: Text(
                    "Add your signature here.",
                    style: TextStyle(
                        color: Color.fromRGBO(145, 139, 148, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Next(
                next: AddArtworkInfo(),
              )
            ],
          ),
        ));
  }
}
