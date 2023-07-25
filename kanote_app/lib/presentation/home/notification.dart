import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class NotificationDetail extends StatefulWidget {
  const NotificationDetail({super.key});

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          title: Text("Notifications", style: knTitle()),
          centerTitle: false,
          bottom: const TabBar(
            labelColor: kPrimaryColor,
            unselectedLabelColor: Color(0xff918B94),
            indicatorColor: kPrimaryColor,
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Sale",
              )
            ],
          ),
        ),
        body:const TabBarView(
          children: <Widget>[
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You haven’t followed any artists,\n or galleries yet.",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Follow artists to keep track of their latest work and career highlights. Following artists helps Kanote to recommend works you might like.",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You haven’t followed any artists,\n or galleries yet.",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Follow artists to keep track of their latest work and career highlights. Following artists helps Kanote to recommend works you might like.",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
