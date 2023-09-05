// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hichat/src/views/chat/chat.dart';
import 'package:hichat/src/views/chat/repos/chat.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = ChatRepo().getList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFf1f2f3),
        foregroundColor: Colors.black87,
        title: Text("Weixin(1745)"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
        ],
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) => ChatItem(
          data: chatList[index],
        ),
      ),
    );
  }
}
