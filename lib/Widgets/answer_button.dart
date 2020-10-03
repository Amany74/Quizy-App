import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function qIndex;
  String answerText;
  Answer(this.qIndex , this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal[300] ,
        child: Text(answerText) ,
        onPressed: qIndex ,
      ),
    );
  }
}
