import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/post_tile/post_tile.dart';

class Community_controller extends GetxController {}

class CommentController extends GetxController {}

class TabsControllers extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabsController;
  RxList<Post_tile> allPosts = <Post_tile>[].obs;
  RxList<Post_tile> recentPosts = <Post_tile>[].obs;
  RxList<Post_tile> Posts = <Post_tile>[].obs;
  final List<Tab> tabList = [
    Tab(
      text: "All",
    ),
    Tab(
      text: "Following",
    ),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    tabsController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    tabsController!.dispose();
    super.onClose();
  }
}
