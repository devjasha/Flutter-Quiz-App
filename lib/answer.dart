import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.green),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
