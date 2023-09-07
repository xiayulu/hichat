// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hichat/src/shared/appbar.dart';
import 'package:hichat/src/views/chat/chat.dart';
import 'package:hichat/src/views/chat/repos/chat.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = ChatRepo().getList();
    return Scaffold(
      appBar: buildAppbar("Weixin(955)"),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) => ChatItem(
          data: chatList[index],
        ),
      ),
    );
  }
}
