import 'package:flutter/material.dart';

import './question.dart';

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
    var questions = ['Whats\'s you favourite color?', 'Whats your favourite animal?'];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My first App'),),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
        ]
      ,),
    ),);
  }
}
