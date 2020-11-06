import 'package:flutter/material.dart';

class Task {
  final int id;
  final String taskTitle;
  DateTime dateTime;

  Task({@required this.id, @required this.taskTitle, @required this.dateTime});
}
