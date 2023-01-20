import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({ 
    @required this.questions, 
    @required this.answerQuestion,  
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    Column(
        children: [
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answerQuestion(), answer['text']);
          }).toList()
        ],
    ) ;
  }
}