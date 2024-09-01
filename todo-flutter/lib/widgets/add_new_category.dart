import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/data/category_model.dart';
import 'package:todo_flutter/provider/categories_provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddNewCategory extends StatefulWidget {
  const AddNewCategory({super.key});

  @override
  State<StatefulWidget> createState() => _AddNewCategoryState();
}

class _AddNewCategoryState extends State<AddNewCategory> {
  final TextEditingController _categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            controller: _categoryController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: AppLocalizations.of(context)!.addNewCategory,
            ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {
            CategoryModel? text = _categoryController.text;
            if (text.isNotEmpty) {
              context.read<CategoriesProvider>().addCategory(category: text);
            }
          },
          child: const Text('Add'),
        ),
        const SizedBox(width: 16)
      ],
    );
  }
}
