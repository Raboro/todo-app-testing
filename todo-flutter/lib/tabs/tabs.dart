import 'package:flutter/material.dart';
import 'package:todo_flutter/tabs/categories_tab.dart';
import 'package:todo_flutter/tabs/todos_tab.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  static const List<Widget> _tabs = <Widget>[TodosTab(), CategoriesTab()];
  int _selectedTabIndex = 0;

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
