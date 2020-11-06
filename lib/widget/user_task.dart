import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';
import 'package:tasktoday/widget/add_task.dart';
import 'package:tasktoday/widget/task_list.dart';
import 'package:toast/toast.dart';
import 'dart:math';
import 'package:tasktoday/widget/no_task.dart';

class UserTask extends StatefulWidget {
  @override
  _UserTaskState createState() => _UserTaskState();
}

class _UserTaskState extends State<UserTask> {
  final List<Task> _taskList = [];

  void _addNewTask(String newTaskName) {
    random(min, max) {
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }

    final newTk = Task(
      id: random(1, 1000),
      taskTitle: newTaskName,
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

  String editTask(var index) {
    return (_taskList[index].taskTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_taskList.length == 0) NoTask(),
        SingleChildScrollView(
          child: Container(
            child: TaskList(_taskList, _deleteTask, _addNewTask),
          ),
        ),
        if (_taskList.length < 5)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AddTask(_addNewTask),
            ],
          ),
        if (_taskList.length == 5)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => showToast("Only 5 task per day",
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM)),
          ),
      ],
    );
  }
}
