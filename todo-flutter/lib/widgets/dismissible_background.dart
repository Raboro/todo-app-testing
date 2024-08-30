import 'package:flutter/material.dart';

class DismissibleBackground extends StatelessWidget {
  final double borderRadius;

  const DismissibleBackground({super.key, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.all(4.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
