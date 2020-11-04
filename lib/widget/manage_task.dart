import 'package:flutter/material.dart';
import 'package:tasktoday/model/task.dart';

class TaskBucket extends StatefulWidget {
  final List<Task> taskBucket;
  TaskBucket(this.taskBucket);

  @override
  _TaskBucketState createState() => _TaskBucketState();
}

class _TaskBucketState extends State<TaskBucket> {

 final List<Task> _taskList = [];

  Widget box(int counter) {
    return Text(
      widget.taskBucket[counter].taskTitle,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  var index = 0;
  void upBox(String taskName_, int id_, DateTime dateTime_) {
    final newTk = Task(
      id: id_,
      taskTitle: taskName_,
      dateTime: dateTime_,
    );
    setState(() {
      index++;
      _taskList.add(newTk);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Text(
              'Please select the task which is important!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 16),
            ),
//            Text(
//              _taskList[0].taskTitle,
//            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () => {
                      print(widget.taskBucket[index].taskTitle),
                      upBox(
                        widget.taskBucket[index].taskTitle,
                        widget.taskBucket[index].id,
                        widget.taskBucket[index].dateTime,
                      ),
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      child: Card(
                        color: Colors.pinkAccent,
                        elevation: 5,
                        child: Center(
                          child: FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: box(index+3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    onPressed: () => {},
                    child: Container(
                      width: 100,
                      height: 75,
                      child: Card(
                        color: Colors.pinkAccent,
                        elevation: 5,
                        child: Center(child: box(index+1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
