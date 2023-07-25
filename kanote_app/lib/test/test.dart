// import 'package:flutter/material.dart';
// // import 'package:socket_io_client/socket_io_client.dart' as IO;

// // class ChatAppUI extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Chat App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: ChatScreen(),
// //     );
// //   }
// // }

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textController = TextEditingController();
//   final List<String> _messages = [];


//   void _handleSubmitted(String text) {
//     _textController.clear();
//     // socket.emit('message', text); // Emit the message to the server
//     setState(() {
//       _messages.add(text);
//     });
//   }

//   Widget _buildChatList() {
//     return ListView.builder(
//       itemCount: _messages.length,
//       itemBuilder: (context, index) {
//         return Align(
//           alignment: _messages[index].isMyMessage
//               ? Alignment.centerRight
//               : Alignment.centerLeft,
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: _messages[index].isMyMessage
//                     ? Colors.blue
//                     : Colors.grey[300],
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 _messages[index].text,
//                 style: TextStyle(
//                   color: _messages[index].isMyMessage
//                       ? Colors.white
//                       : Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildChatLista() {
//     return ListView.builder(
//       itemCount: _messages.length,
//       itemBuilder: (context, index) {
//         final message = _messages[index];
//         final isMyMessage =
//             index % 2 == 0; // Alternating messages between user and friend

//         return Container(
//           alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
//           child: Container(
//             margin: EdgeInsets.all(8.0),
//             padding: EdgeInsets.all(12.0),
//             decoration: BoxDecoration(
//               color: isMyMessage ? Colors.blue[100] : Colors.grey[300],
//               borderRadius: BorderRadius.circular(16.0),
//             ),
//             child: Text(
//               message,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildTextComposer() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Flexible(
//             child: TextField(
//               controller: _textController,
//               onSubmitted: _handleSubmitted,
//               decoration: InputDecoration.collapsed(
//                 hintText: 'Enter your message',
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             onPressed: () => _handleSubmitted(_textController.text),
//           ),
//         ],
//       ),
//     );
//   }

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

//   // @override
//   // void dispose() {
//   //   socket.disconnect();
//   //   super.dispose();
//   // }
// }
