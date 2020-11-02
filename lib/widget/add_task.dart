import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: 325,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: 'Enter your tasks'),
                        keyboardType: TextInputType.text,
                        controller: taskController,
                        onSubmitted: (_) => print(taskController.text),
                      ),
                    ),
                  ),
                ),
              );
            });
      },

    );
  }
}
