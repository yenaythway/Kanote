import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/dialogs/bid_dialog.dart';
import 'package:kanote_app/presentation/home/profile/artist_registration.dart';
import 'package:kanote_app/presentation/home/profile/profile_view.dart';
import 'package:kanote_app/presentation/market_seller/Drawer/Pages/cart_list_page.dart';
import 'package:kanote_app/presentation/market_seller/Drawer/Pages/order_history_page.dart';
import 'package:kanote_app/presentation/market_seller/Drawer/Pages/wishlist_page.dart';
import 'package:kanote_app/presentation/home/profile/switch_artlover.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/drawer_item.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

bool isArtist = false;

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(height: MARGIN_LARGE),
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child:  Padding(
                      padding:const EdgeInsets.all(4.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child:const Icon(Icons.close)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: kPrimaryColor),
                          child: Image.asset(
                            "assets/images/profile_image.png",
                            fit: BoxFit.fill,
                            height: 50,
                          )),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Wai Lin",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 23,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: kPrimaryColor),
                            child: Center(
                              child: isArtist
                                  ? Text(
                                      "Artist",
                                      style: knText13(),
                                    )
                                  : Text(
                                      "Artlover",
                                      style: knText13(),
                                    ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      context.push(const SwitchArtLover());
                    },
                    child: isArtist
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Switch to an artlover mode",
                                style: TextStyle(color: kPrimaryDarkColor),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: kPrimaryDarkColor,
                                ),
                              )
                            ],
                          )
                        : InkWell(
                            onTap: () {
                              context.push(const ArtistRegistration());
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Switch to an artist mode",
                                  style: TextStyle(color: kPrimaryDarkColor),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: kPrimaryDarkColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Your Profile",
                    icon: Icons.person_2_outlined,
                    onTap: () {
                      context.push(const ProfileView());
                    },
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Cart",
                    icon: Icons.shopping_cart_outlined,
                    onTap: () {
                      context.push(const CartListPage());
                    },
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Orders History",
                    icon: Icons.history_edu_outlined,
                    onTap: () {
                      context.push(const OrderHistoryPage());
                    },
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Wishlist",
                    icon: Icons.favorite_border,
                    onTap: () {
                      context.push(const SavedPage());
                    },
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Setting",
                    icon: Icons.settings_outlined,
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Contact Us",
                    icon: Icons.person_2_outlined,
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Term & Conditions",
                    icon: Icons.terminal_outlined,
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  DrawerItem(
                    text: "Sign Out",
                    icon: Icons.logout_outlined,
                    onTap: () {
                      showBidDialog(
                          context,
                          "Are you sure you want to sign out of your account",
                          "Signing out will log you out of the app and if you have any unsaved changes or ongoing activities, please make sure to save them before signing out.");
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              
             mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset("assets/images/Fb.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset("assets/images/Insta.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset("assets/images/LinkedIn.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 15,
                          child: Image.asset("assets/images/YT.png")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 20,
                        child: Image.asset("assets/images/c.png")),
                    const SizedBox(
                      width: 10,
                    ),
                   const Text("2023 Tee Htwin Organization",style: TextStyle(color: Color(0xff847979)),),
                  ],
                ),
               const SizedBox(height: MARGIN_40,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
