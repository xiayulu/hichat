import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hichat/src/settings/color.dart';
import 'package:hichat/src/views/chat/page.dart';
import 'package:hichat/src/views/contacts/page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: "HiChat",
      home: const RootApp(),
    );
  }
}

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int currentIndex = 0;
  final chatCount = Random().nextInt(999);

  final screens = [
    const ChatListPage(),
    const ContactPage(),
    const ChatListPage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    String chatCountStr = chatCount > 99 ? "99+" : "$chatCount";

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.green,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: Colors.red,
                label: Text('$chatCount'),
                child: const FaIcon(FontAwesomeIcons.comment),
              ),
              activeIcon: Badge(
                backgroundColor: Colors.red,
                label: Text(chatCountStr),
                child: const FaIcon(FontAwesomeIcons.solidComment),
              ),
              label: "Chats",
            ),
            const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.addressBook),
              activeIcon: FaIcon(
                FontAwesomeIcons.solidAddressBook,
              ),
              label: "Contacts",
            ),
            const BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: Colors.red,
                smallSize: 8,
                child: FaIcon(FontAwesomeIcons.compass),
              ),
              activeIcon: Badge(
                backgroundColor: Colors.red,
                smallSize: 10,
                child: FaIcon(FontAwesomeIcons.solidCompass),
              ),
              label: "Discover",
            ),
            const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              activeIcon: FaIcon(FontAwesomeIcons.solidUser),
              label: "Me",
            ),
          ]),
    );
  }
}
