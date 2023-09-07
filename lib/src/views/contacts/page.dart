// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hichat/src/settings/color.dart';
import 'package:hichat/src/shared/appbar.dart';
import 'package:hichat/src/views/contacts/contact_item.dart';
import 'package:hichat/src/views/contacts/models/contact.dart';
import 'package:hichat/src/views/contacts/models/system.dart';
import 'package:hichat/src/views/contacts/repos/cotact.dart';
import 'package:hichat/src/views/contacts/section.dart';
import 'package:hichat/src/views/contacts/system_item.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar("Contacts"),
      body: CustomScrollView(
        slivers: [
          _buildSystemList(),
          ..._buildWorks(),
          ..._buildFriends(),
        ],
      ),
    );
  }

  Widget _buildSystemList() {
    final data = [
      SystemContactModel(
          name: "New Friends",
          icon: Icons.person_add_alt,
          iconBackgroundColor: AppColors.orange),
      SystemContactModel(
          name: "Chat Only Friends",
          icon: Icons.person_outlined,
          iconBackgroundColor: AppColors.orange),
      SystemContactModel(
          name: "Group Chats",
          icon: Icons.group,
          iconBackgroundColor: AppColors.green),
      SystemContactModel(
        name: "Tags",
        icon: Icons.tag,
      ),
      SystemContactModel(
        name: "Official Accounts",
        icon: Icons.person_4,
      ),
    ];
    return SliverFixedExtentList.builder(
      itemExtent: 64,
      itemCount: data.length,
      itemBuilder: (context, index) => SystemItem(data: data[index]),
    );
  }

  List<Widget> _buildWorks() {
    return [
      ContactSection(title: "Works"),
      SliverToBoxAdapter(
        child: SystemItem(
          data: SystemContactModel(
            name: "WeCom Concontacts",
            icon: Icons.chat,
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildFriends() {
    final data = ContactRepo().getList();

    final Map<String, List<ContactModel>> groups = {};

    for (final contact in data) {
      final first = contact.name[0].toUpperCase();
      if (groups.containsKey(first)) {
        groups[first]?.add(contact);
      } else {
        groups[first] = [contact];
      }
    }

    final sortedKeys = groups.keys.toList()..sort();

    final List<Widget> widgets = [];
    for (final key in sortedKeys) {
      widgets.add(ContactSection(title: key));
      widgets.add(
        SliverFixedExtentList.builder(
          itemExtent: 64,
          itemCount: groups[key]!.length,
          itemBuilder: (context, index) =>
              ContactItem(data: groups[key]![index]),
        ),
      );
    }
    return widgets;
  }
}
