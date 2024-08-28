import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/heading.dart';

class NewTodoModal extends StatelessWidget {
  const NewTodoModal({super.key});

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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a new Todo'),
            ),
          ),
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
