import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SafeArea(child: Text('Test')),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.task_alt), label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories')
          ],
        )
    );
  }
}
