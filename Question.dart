import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String Ques;
  Question(this.Ques);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        this.Ques,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, color: Colors.cyan, fontWeight: FontWeight.bold),
      ),
    );
  }
}
