import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  final String title;

  const ContactSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.grey.shade300,
        child: Text(title),
      ),
    );
  }
}
