import 'package:flutter/material.dart';

class TiList extends StatelessWidget {
  final List<Widget> items;

  const TiList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (context, index) => Container(
              height: 16,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: 56,
                    color: Colors.transparent,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
        itemCount: items.length);
  }
}
