import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hichat/src/views/contacts/models/contact.dart';

class ContactItem extends StatelessWidget {
  final ContactModel data;

  const ContactItem({super.key, required this.data});

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
            image: DecorationImage(image: AssetImage(data.avatar)),
            borderRadius: BorderRadius.circular(8),
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
