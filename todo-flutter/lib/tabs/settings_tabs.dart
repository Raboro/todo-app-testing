import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/heading.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        Heading(text: 'Settings'),
      ]),
    );
  }
}
