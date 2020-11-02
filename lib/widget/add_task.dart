import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTc;
  final taskController = TextEditingController();

  AddTask(this.addTc);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
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
                                cursorColor: Colors.deepPurple,
                                decoration: InputDecoration(
                                  labelText: 'Enter your tasks',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 15),
                                ),
                                keyboardType: TextInputType.text,
                                controller: taskController,
                              ),
                            ),
                            FlatButton(
                              color: Colors.deepPurple,
                              child: Text(
                                'Submit',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                addTc(
                                  taskController.text,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
