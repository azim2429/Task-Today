import 'package:flutter/material.dart';

class NoTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/43710.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          border: Border.all(
            color: Colors.deepPurpleAccent,
            width: 1,
          )),
    );
  }
}
