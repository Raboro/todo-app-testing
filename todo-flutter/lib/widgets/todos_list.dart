import 'package:flutter/material.dart';
import 'package:todo_flutter/data/todo_model.dart';
import 'package:todo_flutter/widgets/todo.dart';
import 'dismissible_background.dart';

class TodosList extends StatefulWidget {
  const TodosList({super.key});

  @override
  State<StatefulWidget> createState() => _TodosListState();
}

class _TodosListState extends State<TodosList> {
  static const double borderRadius = 15.0;
  List<TodoModel> todos = List<TodoModel>.generate(
      20,
      (int index) =>
          TodoModel(name: '$index Todo', description: 'This is a description'));

  Future<bool> _openConfirmationDialog(BuildContext context, int index) async {
    bool dismiss = false;
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want to delete: \n"${todos[index]}"?'),
            actions: [
              TextButton(
                  onPressed: () {
                    dismiss = true;
                    Navigator.pop(context);
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('No'))
            ],
          );
        });
    return dismiss;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: ListView.builder(
          itemCount: todos.length,
          padding: const EdgeInsets.all(25),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(4.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: const DismissibleBackground(),
                    ),
                  ),
                ),
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
