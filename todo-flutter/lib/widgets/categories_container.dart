import 'package:flutter/material.dart';
import 'package:todo_flutter/data/category_model.dart';

class CategoriesContainer extends StatefulWidget {
  const CategoriesContainer({super.key});

  @override
  State<StatefulWidget> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  final List<CategoryModel> categories = <CategoryModel>[
    'Technology',
    'Science',
    'Sports',
    'Music',
    'Art',
    'Travel',
    'Movies',
    'Books',
    'Fitness',
    'Cooking'
  ];

  @override
  Widget build(BuildContext context) {
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
