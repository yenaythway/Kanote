import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/community/community_controller.dart';
import 'post_tile/post_tile.dart';

class Community_page extends StatefulWidget {
  const Community_page({super.key});

  @override
  State<Community_page> createState() => _Community_pageState();
}

class _Community_pageState extends State<Community_page> {
  // ScrollController scrollController = ScrollController();
  // bool refrh = false;
  // void refresh() async {
  //   scrollController.animateTo(0,
  //       duration: Duration(microseconds: 500), curve: Curves.easeInOut);
  //   setState(() {
  //     refrh = !refrh;
  //   });
  //   await Future.delayed(
  //     Duration(seconds: 1),
  //   );
  //   setState(() {
  //     refrh = false;
  //   });
  // }

  // void dispose() {
  //   scrollController.dispose(); // Don't forget to dispose the scroll controller
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final TabsControllers tabsControllers = Get.put(TabsControllers());
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Community",
              style: TextStyle(
                  color: Color.fromRGBO(122, 13, 190, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            TabBar(
                labelColor: Color.fromRGBO(122, 13, 190, 1),
                unselectedLabelColor: Color.fromRGBO(145, 139, 148, 1),
                labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                unselectedLabelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                indicatorColor: Colors.purple,
                controller: tabsControllers.tabsController,
                tabs: tabsControllers.tabList),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: TabBarView(
                  controller: tabsControllers.tabsController,
                  children: [Posts(), Posts()]),
            ),
          ],
        ),
      ),
    ));
  }
}

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => Post_tile()),
      itemCount: 10,
    );
  }
}
// CustomScrollView(controller: scrollController, slivers: [
//             // SliverAppBar(),
//             SliverToBoxAdapter(
//                 child: Container(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Community',
//                       style: TextStyle(
//                           color: Colors.purple[800],
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Row(
//                       children: [
//                         Expanded(child: const Text('Daily Moment')),
//                         refrh
//                             ? Container(
//                                 width: 20,
//                                 height: 20,
//                                 child: CircularProgressIndicator(
//                                   strokeWidth: 3.0,
//                                   color: Colors.purple[600],
//                                 ))
//                             : SizedBox.shrink()
//                       ],
//                     )
//                   ]),
//             )),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                   (context, index) => Post_tile(
//                       // post_image_url: 'assets/images/post_image.png',
//                       //profile_url: 'assets/images/profile_image.png',
//                       ),
//                   childCount: 10),
//             ),
//           ]),
