import 'package:flutter/material.dart';

PreferredSizeWidget buildAppbar(String title) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: const Color(0xFFf1f2f3),
    foregroundColor: Colors.black87,
    title: Text(title),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle_outline)),
    ],
  );
}
