import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTc;
  final taskController = TextEditingController();
  AddTask(this.addTc);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: 325,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children:<Widget> [
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Enter your tasks'),
                            keyboardType: TextInputType.text,
                            controller: taskController,
                          ),
                          FlatButton(
                          child:Text(
                            'Submit'
                          ),
                            onPressed: (){
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
    );
  }
}
