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
                return Wrap(
                  children: [
                    const Heading(text: 'Add new Todo'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a new Todo'
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'))
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
