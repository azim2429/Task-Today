import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';


class TaskBucket extends StatelessWidget {
  final List<Task> taskBucket;
  TaskBucket(this.taskBucket);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(taskBucket[0].id.toString()),
    );
  }
}

