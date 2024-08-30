import 'package:flutter/material.dart';
import 'package:todo_flutter/data/todo_model.dart';

class Todo extends StatelessWidget {
  final TodoModel todo;
  final double borderRadius;

  const Todo({super.key, required this.todo, required this.borderRadius});

  Widget _buildListTitle() {
    return ListTile(
      title: Text(todo.name),
      subtitle: todo.description == null ? null : Text(todo.description!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Card(child: _buildListTitle()),
    );
  }
}
