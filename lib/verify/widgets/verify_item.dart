import 'package:flutter/material.dart';

class VerifyItem extends StatelessWidget {
  const VerifyItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "  🔹 $text",
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
