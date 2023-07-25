import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/community/post_tile/profile_avatar.dart';
import 'package:get/get.dart';

import '../community/report/report_page.dart';
import 'confirm_to_mkexp.dart';

class Inbox_page extends StatelessWidget {
  //outer list
  const Inbox_page({super.key});

  Widget _chatTile() {
    return GestureDetector(
      onTap: () => Get.to(Conversation(
        friendName: "Sabrieel",
        myImage: 'assets/images/profile_image.png',
        otherImage: 'assets/images/chat_girl.png',
      )),
      child: Container(
        height: 70,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/chat_girl.png',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sabrieel',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Hi...')),
                          // SizedBox.expand(),
                          Text('. 1 hour ago')
                        ],
                      )
                    ],
                  ),
                ),
                // SizedBox.expand(),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  @override //outter chat list
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Inbox",
                        style: TextStyle(
                            color: Color.fromRGBO(122, 13, 190, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(ConfirmToMkexp()),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(122, 13, 190, 1),
                                borderRadius: BorderRadius.circular(3)),
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              "assets/images/marketexpert.png",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Market Expert",
                            style: TextStyle(
                                color: Color.fromRGBO(122, 13, 190, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => _chatTile(),
                itemCount: 4,
              )
            ],
          ),
        ),
      )),
    );
  }
}

class Conversation extends StatelessWidget {
  //chat conversations
  String myImage;
  String otherImage;
  String friendName;
  bool isMarketExpert;
  Conversation(
      {super.key,
      required this.friendName,
      required this.myImage,
      required this.otherImage,
      this.isMarketExpert = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            isMarketExpert
                ? Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(122, 13, 190, 1),
                        borderRadius: BorderRadius.circular(3)),
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/images/marketexpert.png",
                    ),
                  )
                : Image.asset(
                    otherImage,
                    height: 35,
                    width: 35,
                  ),
            const SizedBox(
              width: 7,
            ),
            Text(
              friendName,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          PopupMenuButton(
              onSelected: (value) =>
                  value == "report" ? Get.to(ReportPage()) : null,
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromRGBO(51, 33, 62, 1),
              ),
              offset: const Offset(-10, 50),
              elevation: 2,
              color: Colors.white,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        value: "report",
                        padding: const EdgeInsets.only(
                            left: 10, right: 30, bottom: 5, top: 1),
                        // onTap: () => Get.to(ReportPage()),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.sms_failed_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Report")
                          ],
                        )),
                  ]),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(122, 13, 190, 1)),
                        child: const Text(
                          "Today",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Mssage(
                        isMarketExpert: isMarketExpert,
                        time: "10",
                        isImage: false,
                        content:
                            "Hey I want to know more about the Flower and a frog artworks.",
                        isMe: true,
                        image: myImage,
                      ),
                      Mssage(
                        isMarketExpert: isMarketExpert,
                        time: "5",
                        isImage: false,
                        content:
                            "Hello, This is Smith. Thank u for contacting me! Are you willing to see more about this artwork!",
                        isMe: false,
                        image: otherImage,
                      ),
                      Mssage(
                        isMarketExpert: isMarketExpert,
                        time: "2",
                        isImage: true,
                        content: otherImage,
                        isMe: true,
                        image: myImage,
                      ), //
                      Mssage(
                        isMarketExpert: isMarketExpert,
                        time: "1",
                        isImage: false,
                        content: "It’s still available!!!",
                        isMe: false,
                        image: otherImage,
                      ),
                      Mssage(
                        isMarketExpert: isMarketExpert,
                        time: "1",
                        isImage: false,
                        content: ".............",
                        isMe: true,
                        image: myImage,
                      )
                    ],
                  ),
                )),
          ),

          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1), // Shadow color
                    spreadRadius: 5, // How spread the shadow is
                    blurRadius: 10, // How blurry the shadow is
                    offset: const Offset(0, 3),
                  )
                ]),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 11,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.only(left: 10, right: 10),
              color: const Color.fromRGBO(246, 242, 249, 1),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => null,
                    child: Image.asset(
                      'assets/images/cam.png',
                      height: 30,
                      width: 30,
                      // color: Colors.purple,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextField(
                          cursorColor: Colors.black,
                          // controller: commentController,
                          decoration: InputDecoration(
                              hintText: "Type here",
                              // isCollapsed: true,
                              filled: false,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(246, 242, 249, 1),
                                      style: BorderStyle.none)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(246, 242, 249, 1),
                                      style: BorderStyle.none)))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () => null,
                    child: Image.asset(
                      'assets/icons/commentSent.png',
                      height: 30,
                      width: 30,
                      color: const Color.fromRGBO(122, 13, 190, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // )
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Row(
          //     children: [
          // GestureDetector(
          //   onTap: () => null,
          //   child: Container(
          //     padding: EdgeInsets.all(9.0),
          //     color: Color.fromRGBO(122, 13, 190, 1),
          //     child: Image.asset(
          //       'assets/images/messagepick.png',
          //       height: 35,
          //       width: 35,
          //       // color: Colors.purple,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: 5,
          // ),
          //       Expanded(
          //         child: Container(
          //     child: TextField(
          //         cursorColor: Colors.black,
          //         // controller: commentController,
          //         decoration: InputDecoration(
          //             hintText: "Type here",
          //             filled: true,
          //             enabledBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(
          //                     color: Colors.white,
          //                     style: BorderStyle.none)),
          //             focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(
          //                     color: Colors.white,
          //                     style: BorderStyle.none)))),
          //   ),
          // ),
          //       SizedBox(
          //         width: 5,
          //       ),
          //       GestureDetector(
          //         onTap: () => null,
          //         child: Container(
          //           padding: EdgeInsets.all(9.0),
          //           color: Color.fromRGBO(122, 13, 190, 1),
          //           child: Image.asset(
          //             'assets/images/messagesend.png',
          //             height: 30,
          //             width: 30,
          //             // color: Colors.purple,
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          //#################################################################
          // Container(
          //   height: 70,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     // color: Color(0xFF0099EE),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey,
          //         blurRadius: 1,
          //         offset: Offset(-4, -4),
          //         // blurRadius: _blurRadius,
          //         spreadRadius: 10,
          //       )
          //     ],
          //   ),
          //   child: Row(
          //     children: [
          //       // paddingAll(15),
          //       Expanded(child: TextField()),
          //       Container(
          //         // color: Colors.purple,
          //         child: Image.asset(
          //           'assets/icons/commentSent.png',
          //           height: 30,
          //           width: 30,
          //           // color: Colors.purple,
          //         ),
          //       )
          //     ],
          //   ),
          //   // shadowColor: Colors.black,
          // )
          // Container(
          //   height: 0,
          //   child: Text('data'),
          //   color: Colors.amber,
          // )
        ],
      ),
      // Container(
      //   color: Colors.white,
      //   padding: EdgeInsets.symmetric(horizontal: 15),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       // crossAxisAlignment: CrossAxisAlignment.start,
      //       // mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      // Mssage(
      //   content: "Hey",
      //   isMe: true,
      //   image: 'assets/images/profile_image.png',
      // ),
      // Mssage(
      //   content: "Hey",
      //   isMe: false,
      //   image: 'assets/images/chat_girl.png',
      // ),
      // Mssage(
      //   content:
      //       "Hey I want to know more about the Flower and a frog artworks.",
      //   isMe: true,
      //   image: 'assets/images/profile_image.png',
      // ),
      // Mssage(
      //   content:
      //       "Hello, This is Smith. Thank u for contacting me! Are you willing to see more about this artwork!",
      //   isMe: false,
      //   image: 'assets/images/chat_girl.png',
      // ),
      //         // ownmessage(context),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class Mssage extends StatelessWidget {
  String content;
  bool isMe;
  String image;
  bool isImage;
  String time;
  bool isMarketExpert;
  Mssage(
      {super.key,
      required this.content,
      required this.isMe,
      required this.image,
      required this.isImage,
      required this.time,
      required this.isMarketExpert});
  Widget _mymessage(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
            child: SizedBox(
          width: 1,
        )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _textcontainer(context),
            const Row(
              children: [
                Text(
                  "sent 1 mins ago",
                  style: TextStyle(
                      color: Color.fromRGBO(122, 13, 190, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 3,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Image.asset(
          image,
          height: 30,
          width: 30,
        )
      ],
    );
  }

  Widget _othermessage(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile_avatar(image_url: image),
        isMarketExpert
            ? Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(122, 13, 190, 1),
                    borderRadius: BorderRadius.circular(3)),
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  "assets/images/marketexpert.png",
                ),
              )
            : Image.asset(
                image,
                height: 30,
                width: 30,
              ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textcontainer(context),
            const Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                Text(
                  "sent 1 mins ago",
                  style: TextStyle(
                      color: Color.fromRGBO(122, 13, 190, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _textcontainer(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return isImage
        ? _image()
        : ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: width - 100), //minHeight: 40, minWidth: 40,
            child: Card(
              color: const Color.fromRGBO(246, 242, 249, 1),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  content,
                  style: const TextStyle(
                      color: Color.fromRGBO(77, 77, 77, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          );
  }

  Widget _image() {
    return Container(
      alignment: Alignment.centerRight,
      height: 200,
      width: 200,
      child: Image.asset(
        "assets/images/chat_image.png",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: isMe ? _mymessage(context) : _othermessage(context));
  }
}
// class ChatApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Chat App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ChatScreenUI(),
//     );
//   }
// }
// class ChatScreen extends GetxController {
//   final TextEditingController _messageController = TextEditingController();
//   final RxList<String> _messages = <String>[].obs;
//   List<String> get messages => _messages;
//   void sendMessage() {
//     if (_messageController.text.isNotEmpty) {
//       _messages.add(_messageController.text);
//       _messageController.clear();
//     }
//   }
//   @override
//   void dispose() {
//     _messageController.dispose();
//     super.dispose();
//   }
// }
// class ChatScreenUI extends GetView<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Get.put(ChatScreen());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Obx(
//               () => ListView.builder(
//                 itemCount: controller.messages.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(controller.messages[index]),
//                   );
//                 },
//               ),
//             ),
//           ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Row(
//     children: [
//       Expanded(
//         child: TextField(
//           controller: controller._messageController,
//           decoration: InputDecoration(
//             hintText: 'Type your message...',
//           ),
//         ),
//       ),
//       IconButton(
//         icon: Icon(Icons.send),
//         onPressed: controller.sendMessage,
//       ),
//     ],
//   ),
// ),
//         ],
//       ),
//     );
//   }
// }
// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textController = TextEditingController();
//   final List<Message> _messages = [];
//   // IO.Socket socket;
//   @override
//   // void initState() {
//   //   super.initState();
//   //   socket = IO.io('http://YOUR_SERVER_IP:YOUR_SERVER_PORT', <String, dynamic>{
//   //     'transports': ['websocket'],
//   //   });
//   //   socket.connect();
//   //   socket.on('connect', (_) {
//   //     print('Connected to server');
//   //   });
//   //   socket.on('message', (data) {
//   //     setState(() {
//   //       _messages.add(Message(text: data.toString(), isMyMessage: false));
//   //     });
//   //   });
//   // }
//   void _handleSubmitted(String text) {
//     _textController.clear();
//     // socket.emit('message', text); // Emit the message to the server
//     setState(() {
//       _messages.add(Message(text: text, isMyMessage: true));
//     });
//   }
//   Widget _buildChatList() {
//     return ListView.builder(
//       itemCount: _messages.length,
//       itemBuilder: (context, index) {
//         final message = _messages[index];
//         if (message.isImage) {
//           return Container(
//             alignment: message.isMyMessage
//                 ? Alignment.centerRight
//                 : Alignment.centerLeft,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Image.network(
//                   message.text,
//                   width: 200.0,
//                 ),
//                 Text(
//                   '1 minute ago',
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         } else {
//           return Container(
//             alignment: message.isMyMessage
//                 ? Alignment.centerRight
//                 : Alignment.centerLeft,
//             child: Container(
//               margin: EdgeInsets.all(8.0),
//               padding: EdgeInsets.all(12.0),
//               decoration: BoxDecoration(
//                 color:
//                     message.isMyMessage ? Colors.blue[100] : Colors.grey[300],
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               child: Text(
//                 message.text,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
//   // Widget _buildTextComposer() {
//   //   return Container(
//   //     margin: EdgeInsets.symmetric(horizontal: 8.0),
//   //     child: Row(
//   //       children: [
//   //         Flexible(
//   //           child: TextField(
//   //             controller: _textController,
//   //             onSubmitted: _handleSubmitted,
//   //             decoration: InputDecoration.collapsed(
//   //               hintText: 'Enter your message',
//   //             ),
//   //           ),
//   //         ),
//   //         IconButton(
//   //           icon: Icon(Icons.send),
//   //           onPressed: () => _handleSubmitted(_textController.text),
//   //         ),
//   //         IconButton(
//   //           icon: Icon(Icons.image),
//   //           onPressed: () =>
//   //               _handleImageSelect(), // Add image selection functionality
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//   // void _handleImageSelect() async {
//   //   // Code to select an image from gallery or capture from camera
//   //   // You can use plugins like `image_picker` or `flutter_camera`
//   //   // After selecting an image, send it to the server and add it to the chat list
//   //   final imageUrl =
//   //       'https://example.com/image.jpg'; // Replace with the actual image URL
//   //   socket.emit('message', imageUrl); // Emit the image URL to the server
//   //   setState(() {
//   //     _messages.add(Message(text: imageUrl, isMyMessage: true, isImage: true));
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(child: _buildChatList()),
//           Divider(height: 1.0),
//           Container(
//             decoration: BoxDecoration(
//               color: Theme.of(context).cardColor,
//             ),
//             child: _buildTextComposer(),
//           ),
//         ],
//       ),
//     );
//   }
//   @override
//   void dispose() {
//     socket.disconnect();
//     super.dispose();
//   }
// }
// class Message {
//   final String text;
//   final bool isMyMessage;
//   final bool isImage;
//   Message({
//     required this.text,
//     required this.isMyMessage,
//     this.isImage = false,
//   });
// }


