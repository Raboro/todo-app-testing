import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/data/todo_model.dart';
import 'package:todo_flutter/provider/todos_provider.dart';
import 'package:todo_flutter/widgets/todo.dart';
import 'dismissible_background.dart';

class TodosList extends StatefulWidget {
  const TodosList({super.key});

  @override
  State<StatefulWidget> createState() => _TodosListState();
}

class _TodosListState extends State<TodosList> {
  static const double borderRadius = 15.0;
  List<TodoModel> todos = [];

  Future<bool> _openConfirmationDialog(BuildContext context, int index) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want to delete: \n"${todos[index]}"?'),
            actions: [
              TextButton(
                  onPressed: () {
                    context.read<TodosProvider>().removeTodo(index: index);
                    Navigator.pop(context);
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('No'))
            ],
          );
        });
    return false; // auto rebuild, because of provider value change -> therefore false
  }

  @override
  Widget build(BuildContext context) {
    todos = context.watch<TodosProvider>().todos;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: ListView.builder(
          itemCount: todos.length,
          padding: const EdgeInsets.all(25),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                const DismissibleBackground(borderRadius: borderRadius),
                Dismissible(
                  key: ValueKey<int>(index),
                  direction: DismissDirection.startToEnd,
                  dismissThresholds: const {DismissDirection.startToEnd: 0.3},
                  confirmDismiss: (DismissDirection direction) async {
                    return await _openConfirmationDialog(context, index);
                  },
                  child: Todo(todo: todos[index], borderRadius: borderRadius),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
