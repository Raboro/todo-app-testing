import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/heading.dart';

class NewTodoModal extends StatelessWidget {
  const NewTodoModal({super.key});

  Widget _buildInputField({required String hintText}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
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
          _buildInputField(hintText: 'Enter a new Todo'),
          _buildInputField(hintText: 'Description of Todo'),
          Row(
            children: <ButtonStyleButton>[
              ElevatedButton(
                  onPressed: () {
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
