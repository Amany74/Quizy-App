import 'package:flutter/material.dart';
import 'package:quizy/Widgets/answer_button.dart';
import 'package:quizy/Widgets/question.dart';

class Quiz extends StatelessWidget {
  Function answerQuestion;
  int index;
  var questions;
  Quiz(this.index, this.answerQuestion, this.questions);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Card(
          child: Question(
            questions[index]['questionText'],
          ),
        ),
        //generet containers of answers dynamically
        // by mapping the list of answers

       ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()

      ],
    );
  }
}
