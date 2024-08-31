import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_flutter/widgets/heading.dart';
import 'package:todo_flutter/widgets/new_todo_modal.dart';

import '../widgets/todos_list.dart';

class TodosTab extends StatelessWidget {
  const TodosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new Todo',
        onPressed: () {
          showMaterialModalBottomSheet(
            context: context,
            builder: (context) => const NewTodoModal(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [Heading(text: 'Todos'), TodosList()],
      ),
    );
  }
}
