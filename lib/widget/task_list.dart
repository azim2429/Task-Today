import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasktoday/model/task.dart';

class TaskList extends StatelessWidget {
  final List<Task> task;
  final Function DeleteTc;

  TaskList(this.task, this.DeleteTc);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: task.map((tks) {
        return Card(
          color: Colors.white70,
          elevation: 8,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.pinkAccent[200],
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: FittedBox(
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.delete_outline),
                      onPressed: () => DeleteTc(tks.id),
                    ),
                  ),
                ),
              ),
              title: Text(
                tks.taskTitle,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                DateFormat.yMd().add_jm().format(tks.dateTime)
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
