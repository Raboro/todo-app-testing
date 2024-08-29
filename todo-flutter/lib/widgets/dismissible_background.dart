import 'package:flutter/material.dart';

class DismissibleBackground extends StatelessWidget {
  const DismissibleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }
}
