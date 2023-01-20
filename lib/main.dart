import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
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
    final _questions = const [
    {'questionText': 'Whats\'s you favourite color?', 'answers': [
      {'text': 'black', 'score': 10}, 
      {'text': 'red', 'score': 20}, 
      {'text': 'green', 'score': 5}, 
      {'text': 'white', 'score': 99},
    ],},
    {'questionText': 'Whats your favourite animal?', 'answers': [
      {'text': 'dog', 'score': '1000'}, 
      {'text': 'snake', 'score': 1}, 
      {'text': 'elephant', 'score': 100},
      {'text': 'raindeer', 'score': 60},
    ],},
    {'questionText': 'What\'s your favorite sport?', 'answers': [
      {'text': 'hockey', 'score': 10}, 
      {'text': 'soccer', 'score': 30}, 
      {'text': 'football', 'score': 80}, 
      {'text': 'basketbal', 'score': 100},
    ],},
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;     
    });
  }
  
  void _answerQuestion(int score) {

    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1; 
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My first App'),
      ),
      body: _questionIndex < _questions.length 
      ? Quiz(
        answerQuestion: _answerQuestion, 
        questionIndex: _questionIndex, 
        questions: _questions
      ) 
      : Result(_totalScore, _resetQuiz),
    ),);
  }
}
