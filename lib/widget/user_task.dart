import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';
import 'package:tasktoday/widget/add_task.dart';
import 'package:tasktoday/widget/task_list.dart';
import 'package:toast/toast.dart';
import 'dart:math';
import 'package:tasktoday/widget/no_task.dart';
import 'package:tasktoday/widget/manage_task.dart';

class UserTask extends StatefulWidget {
  @override
  _UserTaskState createState() => _UserTaskState();
}

class _UserTaskState extends State<UserTask> {
  final List<Task> _taskList = [
    Task(
      id: 1,
      taskTitle: 'Task-1',
      dateTime: DateTime.now(),
    ),
    Task(
      id: 2,
      taskTitle: 'Task-2',
      dateTime: DateTime.now(),
    ),
    Task(
      id: 3,
      taskTitle: 'Task-3',
      dateTime: DateTime.now(),
    ),
    Task(
      id: 4,
      taskTitle: 'Task-4',
      dateTime: DateTime.now(),
    ),
    Task(
      id: 5,
      taskTitle: 'Task-5',
      dateTime: DateTime.now(),
    )
  ];

  void _addNewTask(String newtaskName) {
    random(min, max) {
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }

    final newTk = Task(
      id: random(1, 1000),
      taskTitle: newtaskName,
      dateTime: DateTime.now(),
    );
    setState(() {
      _taskList.add(newTk);
      Navigator.pop(context);
    });
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  void _deleteTask(var index) {
    setState(() {
      _taskList.removeWhere((tx) {
        return tx.id == index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (_taskList.length == 0) NoTask(),
        Container(
          child: TaskList(_taskList, _deleteTask),
        ),
        if (_taskList.length < 5) Center(child: AddTask(_addNewTask)),
//        if (_taskList.length == 5)
//          Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: FloatingActionButton(
//                child: Icon(Icons.add),
//                onPressed: () => showToast("Only 5 task per day",
//                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM)),
//          ),
      SizedBox(height: 50),
        if (_taskList.length == 5)
       TaskBucket(_taskList),
      ],
    );
  }
}
