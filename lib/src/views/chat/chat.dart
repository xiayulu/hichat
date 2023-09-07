// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hichat/src/views/chat/models/chat.dart';
import 'package:hichat/src/widgets/badge.dart';

class ChatItem extends StatelessWidget {
  final ChatModel data;

  const ChatItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data.avatar),
              ),
            ),
          ),
          Positioned(
            top: -3,
            right: -3,
            child: TiBadge(
                count: data.newMessageCount,
                isDotted: data.isMuted && data.newMessageCount > 0),
          )
        ],
      ),
      title: Text(data.name),
      subtitle: Text(
        data.lastMessage,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            data.time,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          if (data.isMuted)
            Icon(
              Icons.notifications_off,
              size: 20,
              color: Colors.grey.shade500,
            ),
        ],
      ),
    );
  }
}
