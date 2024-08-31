import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/data/category_model.dart';
import 'package:todo_flutter/provider/categories_provider.dart';

class CategoriesContainer extends StatefulWidget {
  const CategoriesContainer({super.key});

  @override
  State<StatefulWidget> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  List<CategoryModel> categories = [];

  @override
  Widget build(BuildContext context) {
    categories = context.watch<CategoriesProvider>().categories;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Wrap(
        spacing: 8.0,
        children: categories.map((category) {
          return Chip(
            label: Text(category),
          );
        }).toList(),
      ),
    );
  }
}
