import 'package:flutter/material.dart';

class TodosList extends StatefulWidget {
  const TodosList({super.key});

  @override
  State<StatefulWidget> createState() => _TodosListState();
}

class _TodosListState extends State<TodosList> {
  List<String> todos = List<String>.generate(20, (int index) => '$index Todo');

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: todos.length,
            padding: const EdgeInsets.all(25),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                  key: ValueKey<int>(index),
                  child: Card(
                    child: ListTile(title: Text(todos[index])),
                  ));
            }));
  }
}
