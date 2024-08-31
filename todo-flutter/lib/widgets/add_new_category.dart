import 'package:flutter/material.dart';

class AddNewCategory extends StatelessWidget {
  const AddNewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add new category',
            ),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Add'),
        ),
        const SizedBox(width: 16)
      ],
    );
  }
}
