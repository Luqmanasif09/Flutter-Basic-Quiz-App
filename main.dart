import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<MyApp> {
  @override
  var _q_index = 0;
  var total_Score = 0;

  void _Change(int score) {
    total_Score += score;
    setState(() {
      _q_index += 1;
    });
  }

  void _Restart() {
    setState(() {
      total_Score = 0;
      _q_index = 0;
    });
  }

  Widget build(BuildContext context) {
    final _Question_List = const [
      {
        'Question': 'Who Develop C++',
        'Answer': [
          {'Option': 'Bill Gate', 'score': 0},
          {'Option': 'Bjarne Stroustrup', 'score': 10},
          {'Option': 'Steve Job', 'score': 0},
          {'Option': 'Eric Allman ', 'score': 0},
        ],
      },
      {
        'Question': '2+2=',
        'Answer': [
          {'Option': '5', 'score': 0},
          {'Option': '9', 'score': 0},
          {'Option': '5', 'score': 0},
          {'Option': '4', 'score': 10},
        ],
      },
      {
        'Question': 'Which data type store int values',
        'Answer': [
          {'Option': 'int', 'score': 10},
          {'Option': 'float', 'score': 0},
          {'Option': 'double', 'score': 0},
          {'Option': 'char', 'score': 0},
        ],
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: _q_index < _Question_List.length
          ? Quiz(
              _Change,
              _q_index,
              _Question_List,
            ) //
          : Result(total_Score, _Restart),
    ));
  }
}
