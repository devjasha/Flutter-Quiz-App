import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1; 
    });
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText': 'Whats\'s you favourite color?', 'answers': [
        'black', 'red', 'green', 'white',
      ],},
      {'questionText': 'Whats your favourite animal?', 'answers': [
        'dog', 'snake', 'elephant', 'raindeer',
      ],},
      {'questionText': 'What\'s your favorite sport?', 'answers': [
        'hockey', 'soccer', 'football', 'basketball',
      ],},
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My first App'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]
      ,),
    ),);
  }
}
