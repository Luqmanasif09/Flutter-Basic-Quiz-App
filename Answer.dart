import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback Func;
  final String Ans;
  Answer(this.Func, this.Ans);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            Ans,
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          onPressed: Func),
    );
  }
}
