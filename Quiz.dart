import 'Answer.dart';
import 'Question.dart';

import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function Change;
  final int q_index;
  final List<Map<String, Object>> Question_List;

  Quiz(this.Change, this.q_index, this.Question_List);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(Question_List[q_index]['Question'] as String),
        ...(Question_List[q_index]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => Change(answer['score']), answer['Option'] as String);
        }).toList()
      ],
    );
  }
}
