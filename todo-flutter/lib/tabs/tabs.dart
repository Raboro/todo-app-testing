import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedTabIndex = 0;
  static const List<Widget> _tabs = <Widget>[Text('Todos'), Text('Categories')];

  void _onTab(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _tabs[_selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.task_alt), label: 'Todos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories')
        ],
        currentIndex: _selectedTabIndex,
        onTap: _onTab,
      ),
    );
  }
}
