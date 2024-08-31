import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/categories_container.dart';
import 'package:todo_flutter/widgets/heading.dart';

import '../widgets/add_new_category.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(child: Heading(text: 'Categories')),
        AddNewCategory(),
        CategoriesContainer()
      ],
    );
  }
}
