import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/community/community_page.dart';
import 'package:kanote_app/presentation/create_auction/create_a_post.dart';
import 'package:kanote_app/presentation/home/browse.dart';
import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/homeview/home_view.dart';
import 'package:kanote_app/presentation/home/notification.dart';
import 'package:kanote_app/presentation/inbox/inbox_page.dart';
import 'package:kanote_app/presentation/market/market_page.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/widgets/custom_bottom_navigation_bar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> homeViewList = [
    const HomeView(),
    const Community_page(),
    const CreateAPost(),
    const MarketPage(),
    const Inbox_page(),
  ];
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerMenu(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset(
            "assets/images/Vector menu.png",
            filterQuality: FilterQuality.high,
            color: const Color(0xff33213E),
          ),
        ),
        title: InkWell(
          onTap: () {
            context.push(const BrowsePage());
          },
          child: Container(
            height: 38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffF6F2F9)),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Icon(
                    Icons.search,
                    color: Color(0xff33213E),
                  ),
                ),
                Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff33213E),
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: InkWell(
              onTap: () {
                context.push(const NotificationDetail());
              },
              child: const Center(
                child: Badge(
                    child: Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xff33213E),
                  size: 27,
                )),
              ),
            ),
          ),
        ],
      ),
      body: homeViewList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/home inactive.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            label: 'Home',
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/home active.png",
                    height: 20,
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/community inactive.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            label: 'Community',
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/community active.png",
                    height: 20,
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/create.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            label: 'Create',
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/create.png",
                    color: kPrimaryColor,
                    height: 20,
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/market inactive.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            label: 'Market',
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/market active.png",
                    height: 20,
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/inbox inactive.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            label: 'Inbox',
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/inbox active.png",
                    height: 20,
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
        ],
        enableFeedback: false,
        currentIndex: selectedIndex,
        selectedItemColor: kPrimaryColor,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400
        ),
        unselectedLabelStyle:
        GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          color: Colors.black
        ),
        unselectedItemColor: const Color(0xff33213E),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),

    );
  }
}
