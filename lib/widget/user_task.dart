import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';
import 'package:tasktoday/widget/add_task.dart';
import 'package:tasktoday/widget/task_list.dart';

class UserTask extends StatefulWidget {
  @override
  _UserTaskState createState() => _UserTaskState();
}

class _UserTaskState extends State<UserTask> {
  final List<Task> _taskList = [
  ];
  var t_id=['1','2','3','4','5'];
  var index=0;
  void _addNewTask(String newtaskName) {
    final newTk = Task(
      id: t_id[index],
      taskTitle: newtaskName,
    );
    setState(() {
      _taskList.add(newTk);
      index++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: TaskList(_taskList),
        ),
        AddTask(_addNewTask),
      ],
    );
  }
}
