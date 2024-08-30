import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/data/todo_model.dart';
import 'package:todo_flutter/provider/todos_provider.dart';
import 'package:todo_flutter/widgets/heading.dart';

class NewTodoModal extends StatefulWidget {
  const NewTodoModal({super.key});

  @override
  State<StatefulWidget> createState() => _NewTodoModalState();
}

class _NewTodoModalState extends State<NewTodoModal> {
  final TextEditingController _todoNameController = TextEditingController();
  final TextEditingController _todoDescriptionController =
      TextEditingController();

  @override
  void dispose() {
    _todoNameController.dispose();
    _todoDescriptionController.dispose();
    super.dispose();
  }

  Widget _buildInputField(
      {required String hintText, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(), hintText: hintText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Heading(text: 'Add new Todo'),
          _buildInputField(
              hintText: 'Enter a new Todo', controller: _todoNameController),
          _buildInputField(
              hintText: 'Description of Todo',
              controller: _todoDescriptionController),
          Row(
            children: <ButtonStyleButton>[
              ElevatedButton(
                  onPressed: () {
                    String? description = _todoDescriptionController.text;
                    if (description.isEmpty) {
                      description = null;
                    }
                    TodoModel todo = TodoModel(
                        name: _todoNameController.text,
                        description: description);
                    context.read<TodosProvider>().addTodo(todo: todo);
                    Navigator.pop(context);
                  },
                  child: const Text('Add')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'))
            ],
          )
        ],
      ),
    );
  }
}
