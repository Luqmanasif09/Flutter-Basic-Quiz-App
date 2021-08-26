import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int Score;
  final VoidCallback Res;
  Result(this.Score, this.Res);

  String Get_Remarks() {
    var remarks;
    if (Score == 0) {
      remarks = "Very Bad";
    } else if (Score == 10) {
      remarks = "Much better";
    } else if (Score == 20) {
      remarks = "Very Good";
    } else if (Score == 30) {
      remarks = "Intelligent";
    }
    return remarks;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            Get_Remarks(),
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          TextButton(
              child: Text(
                'Restart Quiz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: Res)
        ],
      ),
    );
  }
}
