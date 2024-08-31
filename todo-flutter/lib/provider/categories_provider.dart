import 'package:flutter/material.dart';
import 'package:todo_flutter/data/category_model.dart';

class CategoriesProvider extends ChangeNotifier {
  List<CategoryModel> categories = [];

  void addCategory({required CategoryModel category}) {
    categories.add(category);
    notifyListeners();
  }

  void removeCategory({required CategoryModel category}) {
    categories.remove(category);
    notifyListeners();
  }
}
