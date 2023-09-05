// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hichat/src/views/chat/models/chat.dart';

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
            child: _buildBadage(data.newMessageCount, data.isMuted),
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
          Text(data.time),
          if (data.isMuted) Icon(Icons.notifications_off),
        ],
      ),
    );
  }

  Widget _buildBadage(int count, bool isMuted) {
    bool isDotted(int count, bool isMuted) {
      return isMuted && count > 0;
    }

    if (isDotted(count, isMuted)) {
      return _buildBadgeDot();
    }

    if (count > 99) {
      return _buildBadgeMore();
    }

    if (count == 0) {
      return Container();
    }

    return Badge.count(
      count: count,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      textStyle: TextStyle(fontSize: 18),
      largeSize: 24,
      backgroundColor: Colors.red,
    );
  }

  Widget _buildBadgeDot() {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 6,
    );
  }

  Widget _buildBadgeMore() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      height: 18,
      width: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(999),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          3,
          (index) => CircleAvatar(
            radius: 2,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
