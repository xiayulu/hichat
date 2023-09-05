import 'package:flutter/material.dart';

class TiBadge extends StatelessWidget {
  final int count;
  final bool? isDotted;

  const TiBadge({
    super.key,
    required this.count,
    this.isDotted = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isDotted == true) {
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
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      textStyle: const TextStyle(fontSize: 16),
      largeSize: 24,
      backgroundColor: Colors.red,
    );
  }

  Widget _buildBadgeDot() {
    return const CircleAvatar(
      backgroundColor: Colors.red,
      radius: 6,
    );
  }

  Widget _buildBadgeMore() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      height: 18,
      width: 32,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(999),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          3,
          (index) => const CircleAvatar(
            radius: 2,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
