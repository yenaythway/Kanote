import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';

import 'package:kanote_app/presentation/home/drawer/drawer_menu.dart';
import 'package:kanote_app/presentation/home/profile/artist_registration.dart';
import 'package:kanote_app/presentation/home/profile/artist_tab_bar/artist_exhibition.dart';
import 'package:kanote_app/presentation/home/profile/artist_tab_bar/artist_following.dart';
import 'package:kanote_app/presentation/home/profile/artist_tab_bar/artist_overview.dart';
import 'package:kanote_app/presentation/home/profile/artist_tab_bar/yourinsight.dart';
import 'package:kanote_app/presentation/home/profile/edit_profile.dart';
import 'package:kanote_app/presentation/home/profile/artlover_tab_bar/following_view.dart';
import 'package:kanote_app/presentation/home/profile/artlover_tab_bar/mypost_view.dart';
import 'package:kanote_app/presentation/home/profile/artlover_tab_bar/overview.dart';
import 'package:kanote_app/presentation/home/profile/switch_artlover.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<String> accountList = <String>["Artlover account", "Artist account"];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: isArtist ? 4 : 3,
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
          title: Text("Profile", style: knTitle()),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isArtist
                  ? Row(
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Wutt Mhone Oo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Text("@wuttmone503"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 55,
                                  color: kPrimaryColor,
                                  child: const Center(
                                    child: Text(
                                      "Artist",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Wutt Mhone Oo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Text("@wuttmone503"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 55,
                                  color: kPrimaryColor,
                                  child: const Center(
                                    child: Text(
                                      "Artlover",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.push(const EditProfile());
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: kPrimaryColor),
                        child: const Center(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Center(
                        child: DropdownButton2(
                          underline: const Text(""),
                          isExpanded: true,
                          hint: const Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Switch account",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kPrimaryColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(
                              () {
                                selectedValue = value as String;
                                switch (value) {
                                  case "Artlover account":
                                    context.push(const SwitchArtLover());
                                    break;
                                  case "Artist account":
                                    context.push(const ArtistRegistration());
                                    break;
                                }
                              },
                            );
                          },
                          items: accountList
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          iconStyleData: const IconStyleData(
                            iconSize: 30,
                            iconEnabledColor: kPrimaryColor,
                            iconDisabledColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: isArtist
                    ? const TabBar(
                        isScrollable: true,
                        indicatorColor: kPrimaryColor,
                        labelColor: kPrimaryColor,
                        labelPadding: EdgeInsets.only(left: 24, right: 24),
                        labelStyle: TextStyle(fontSize: 16),
                        unselectedLabelColor: Color(0xff918B94),
                        tabs: [
                          Tab(
                            text: "Your Insights",
                          ),
                          Tab(
                            text: "Overview",
                          ),
                          Tab(
                            text: "Exhibition",
                          ),
                          Tab(
                            text: "Following",
                          )
                        ],
                      )
                    : const TabBar(
                        isScrollable: true,
                        indicatorColor: kPrimaryColor,
                        labelColor: kPrimaryColor,
                        labelPadding: EdgeInsets.only(left: 24, right: 24),
                        labelStyle: TextStyle(fontSize: 16),
                        unselectedLabelColor: Color(0xff918B94),
                        tabs: [
                          Tab(
                            text: "Your posts",
                          ),
                          Tab(
                            text: "Overview",
                          ),
                          Tab(
                            text: "Following",
                          )
                        ],
                      ),
              ),
              Expanded(
                child: isArtist
                    ? const TabBarView(
                        children: [
                          YourInsight(),
                          ArtistOverView(),
                          ArtistExhibition(),
                          ArtistFollowing()
                        ],
                      )
                    : const TabBarView(
                        children: [MyPosts(), OverView(), Following()],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
