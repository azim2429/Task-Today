import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasktoday/model/task.dart';

class TaskList extends StatelessWidget {
  final List<Task> task;
  final Function deleteTc;
  final Function addTc;
  //final Widget editTc;
  TaskList(this.task, this.deleteTc,this.addTc);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: task.map((tks) {
            final taskController = TextEditingController(text: tks.taskTitle);
            return Card(
              color: Colors.white,
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.all(1),
                    child: FittedBox(
                      child: IconButton(
                        color: Colors.red,
                        icon: Icon(Icons.delete),
                        onPressed: () => deleteTc(tks.id),
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(1),
                    child: FittedBox(
                      child: IconButton(
                        color: Colors.blue[900],
                        icon: Icon(Icons.edit),
                        onPressed: () => {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  child: Container(
                                    child: Card(
                                      elevation: 10,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              elevation: 5,
                                              child: TextField(
                                                cursorColor: Colors.blue,
                                                decoration: InputDecoration(
                                                  labelText: 'Enter your tasks',
                                                  border: InputBorder.none,
                                                  contentPadding: EdgeInsets.only(
                                                      left: 15,
                                                      bottom: 11,
                                                      top: 11,
                                                      right: 15),
                                                ),
                                                keyboardType: TextInputType.text,
                                                controller: taskController,
                                              ),
                                            ),
                                            FlatButton(
                                              color: Colors.blue,
                                              child: Text(
                                                'Submit',
                                                style:
                                                    TextStyle(color: Colors.white),
                                              ),
                                              onPressed: () {
                                             addTc(
                                             taskController.text,
                                               );
                                             deleteTc(tks.id);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        },
                      ),
                    ),
                  ),
                  title: Text(
                    tks.taskTitle,
                    style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle:Text(tks.id.toString()), //Text(DateFormat.yMd().add_jm().format(tks.dateTime)),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
