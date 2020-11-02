import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> task = [
    Task(
      id: '1',
      taskTitle: 'Task-1',
    ),
    Task(
      id: '2',
      taskTitle: 'Task-2',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:task.map((tks){
      return Card(
        elevation: 8,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.pinkAccent[400],
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: FittedBox(
                  child: Text(
                    tks.id,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            title: Text(
              tks.taskTitle,
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: null,
            ),
          ),
        ),
      );
  }).toList(),
    );
  }
}
