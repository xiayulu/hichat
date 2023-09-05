import 'package:flutter/material.dart';
import 'package:hichat/src/views/chat/page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: "HiChat",
      home: ChatListPage(),
    );
  }
}
