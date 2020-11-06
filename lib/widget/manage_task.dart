///This is just a feature I was trying to implement.

//import 'package:flutter/material.dart';
//import 'package:TaskToday/model/task.dart';
//import 'task_list.dart';
//
//class TaskBucket extends StatefulWidget {
//  final List<Task> taskBucket;
//  final Function delete_Tc;
//  final Function addTc;
//
//  //final Widget editTc;
//  TaskBucket(this.taskBucket, this.delete_Tc, this.addTc);
//
//  @override
//  _TaskBucketState createState() => _TaskBucketState();
//}
//
//class _TaskBucketState extends State<TaskBucket> {
//  bool isClosed = false;
//  final List<Task> _taskList = [];
//  List<Task> _taskFinal = [];
//  final Map<String, int> someMap = {};
//  int tc1_ind = 0;
//  int tc2_ind = 0;
//  int tc3_ind = 0;
//  int tc4_ind = 0;
//  int tc5_ind = 0;
//
//  Widget completeTask() {
//    return Center(
//      child: FlatButton(
//        color: Colors.blue,
//        child: Text(
//          'Close',
//          style: TextStyle(color: Colors.white),
//        ),
//        onPressed: () {
////             tc1_ind++;
////             }
////             if(2==_taskList[j].id){
////               tc2_ind++;
////             }
////             if(3==_taskList[j].id){
////               tc3_ind++;
////             }
////             if(4==_taskList[j].id){
////               tc4_ind++;
////             }if(5==_taskList[j].id){
////               tc5_ind++;
////             }
////             }
//////           print(tc1_ind);
//////           print(tc2_ind);
//////           print(tc3_ind);
//////           print(tc4_ind);
//////           print(tc5_ind);
//////           someMap[_taskList[1].taskTitle] = 1;
//////           someMap[_taskList[2].taskTitle] = 2;
//////           someMap[_taskList[3].taskTitle] = 3;
//////           someMap[_taskList[4].taskTitle] = 4;
////           someMap[_taskList[5].taskTitle] = tc5_ind;
////          someMap[_taskList[4].taskTitle] = tc4_ind;
////          someMap[_taskList[3].taskTitle] = tc3_ind;
////          someMap[_taskList[2].taskTitle] = tc2_ind;
////          someMap[_taskList[1].taskTitle] = tc1_ind;
////          someMap['Test1'] = 40;
////          someMap['Test2'] = 40;
////          someMap['Test3'] = 40;
////         // someMap['Test4'] = 40;
////          var _list = someMap.keys.toList();
//////          _list[2]='Azim';
//////          _list[3]='Azim';
//////          _list[4]='Azim';
//////          print(_list[2]);
//////          print(_list[1]);
//////          print(_list[0]);
//////          print(_list[3]);
//////          print(_list[4]);
////          for(var j=0;j<5;j++) {
////            if(_list[j]==_taskList[j].taskTitle) {
////              print(_list[j]);
////              final newTk = Task(
////                id: _taskList[j].id,
////                taskTitle: _taskList[j].taskTitle,
////                dateTime: _taskList[j].dateTime,
////              );
////              _taskFinal.add(newTk);
////            }
////          }
//          for (var i = 0; i < _taskList.length; i++) {
//            for (var j = 1; j < _taskList.length - 1; j++) {
//              if (1 == _taskList[j].id) {
//                final newTk = Task(
//                  id: _taskList[j].id,
//                  taskTitle: _taskList[j].taskTitle,
//                  dateTime: _taskList[j].dateTime,
//                );
//                _taskFinal.add(newTk);
//              }
//            }
//          }
//          for (var i = 0; i < _taskList.length; i++) {
//            for (var j = 1; j < _taskList.length - 1; j++) {
//              if (2 == _taskList[j].id) {
//                final newTk = Task(
//                  id: _taskList[j].id,
//                  taskTitle: _taskList[j].taskTitle,
//                  dateTime: _taskList[j].dateTime,
//                );
//                _taskFinal.add(newTk);
//              }
//            }
//          }
//          for (var i = 0; i < _taskList.length; i++) {
//            for (var j = 1; j < _taskList.length - 1; j++) {
//              if (3 == _taskList[j].id) {
//                final newTk = Task(
//                  id: _taskList[j].id,
//                  taskTitle: _taskList[j].taskTitle,
//                  dateTime: _taskList[j].dateTime,
//                );
//                _taskFinal.add(newTk);
//              }
//            }
//          }
//          for (var i = 0; i < _taskList.length; i++) {
//            for (var j = 1; j < _taskList.length - 1; j++) {
//              if (4 == _taskList[j].id) {
//                final newTk = Task(
//                  id: _taskList[j].id,
//                  taskTitle: _taskList[j].taskTitle,
//                  dateTime: _taskList[j].dateTime,
//                );
//                _taskFinal.add(newTk);
//              }
//            }
//          }
//          for (var i = 0; i < _taskList.length; i++) {
//            for (var j = 1; j < _taskList.length - 1; j++) {
//              if (5 == _taskList[j].id) {
//                final newTk = Task(
//                  id: _taskList[j].id,
//                  taskTitle: _taskList[j].taskTitle,
//                  dateTime: _taskList[j].dateTime,
//                );
//                _taskFinal.add(newTk);
//              }
//            }
//          }
//          final ids = _taskFinal.map((e) => e.id).toSet();
//          _taskFinal.retainWhere((x) => ids.remove(x.id));
//          setState(() {
//            isClosed = true;
//          });
//        },
//      ),
//    );
//  }
//
//  Widget box(int counter) {
//    return FlatButton(
//      onPressed: () => {
//        upBox(widget.taskBucket[counter].taskTitle,
//            widget.taskBucket[counter].id, widget.taskBucket[counter].dateTime),
//      },
//      child: Container(
//        width: 100,
//        height: 75,
//        child: Card(
//          color: Colors.blueAccent,
//          elevation: 5,
//          child: Center(
//            child: FittedBox(
//              child: Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Text(
//                  widget.taskBucket[counter].taskTitle,
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 20,
//                      fontWeight: FontWeight.bold),
//                ),
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  var index = -1;
//  var ind_1 = 0;
//  var ind_2 = 1;
//
//  void upBox(String taskname, int id, DateTime dateTime) {
//    final newTk = Task(
//      id: id,
//      taskTitle: taskname,
//      dateTime: dateTime,
//    );
//    index++;
//    if (index == -1) {
//      ind_1 = 0;
//      ind_2 = 1;
//    } else if (index == 0) {
//      ind_1 = 1;
//      ind_2 = 2;
//    } else if (index == 1) {
//      ind_1 = 2;
//      ind_2 = 3;
//    } else if (index == 2) {
//      ind_1 = 3;
//      ind_2 = 4;
//    } else if (index == 3) {
//      ind_1 = 4;
//      ind_2 = 3;
//    } else if (index == 4) {
//      ind_1 = 3;
//      ind_2 = 2;
//    } else if (index == 5) {
//      ind_1 = 2;
//      ind_2 = 1;
//    } else if (index == 6) {
//      ind_1 = 1;
//      ind_2 = 0;
//    } else if (index == 7) {
//      ind_1 = 2;
//      ind_2 = 4;
//    } else if (index == 8) {
//      ind_1 = 0;
//      ind_2 = 4;
//    }
//    setState(() {
//      _taskList.add(newTk);
//      print(index);
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 165,
//      child: isClosed == false
//          ? Card(
//              elevation: 10,
//              child: Column(
//                children: [
//                  if (index >= -1)
//                    Padding(
//                      padding: const EdgeInsets.only(top: 10),
//                      child: Text(
//                        "Choose any One",
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black54,
//                            fontSize: 16),
//                      ),
//                    ),
////            Text(
////              _taskList[0].taskTitle,
////            ),
//                  Padding(
//                    padding: const EdgeInsets.all(20.0),
//                    child: Row(
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        if (index < 9) box(ind_1),
//                        SizedBox(
//                          width: 20,
//                        ),
//                        if (index < 9) box(ind_2),
//                        if (index == 9) completeTask(),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            )
//          : Container(
//              child: TaskList(_taskFinal, widget.delete_Tc, widget.addTc),
//            ),
//    );
//  }
//}
