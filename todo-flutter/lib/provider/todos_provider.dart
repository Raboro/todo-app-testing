import 'package:flutter/material.dart';
import 'package:todo_flutter/data/todo_model.dart';

class TodosProvider extends ChangeNotifier {
  List<TodoModel> todos = [];

  void addTodo({required TodoModel todo}) {
    todos.add(todo);
    notifyListeners();
  }

  void removeTodo({required int index}) {
    todos.removeAt(index);
    notifyListeners();
  }
}
