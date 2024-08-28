import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_flutter/widgets/heading.dart';

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
              builder: (context) {
                return const Wrap(
                  children: [
                    Heading(text: 'Add new Todo'),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Heading(text: 'Todos'),
    );
  }
}
