import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hichat/src/views/contacts/models/system.dart';

class SystemItem extends StatelessWidget {
  final SystemContactModel data;

  const SystemItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 12),
      child: Row(children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: data.iconBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            data.icon,
            color: Colors.white,
            size: 28,
          ),
        ),
        const Gap(20),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: Text(
              data.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        )
      ]),
    );
  }
}
