import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TiListItem extends StatelessWidget {
  final Widget leadingIcon;
  final String title;
  final Widget? trailing;

  const TiListItem({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Row(
        children: [
          leadingIcon,
          const Gap(18),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          const Spacer(),
          if (trailing != null)
            Container(
              child: trailing,
            ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,
            color: Colors.grey.shade500,
          )
        ],
      ),
    );
  }
}
