import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      //the external spacing 
         padding:  EdgeInsets.all(60),
      color: Colors.amber,
      margin: EdgeInsets.all(50),
    
      width: double.infinity,
      child: Text(questionText,
       style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
      
      ),
    );
  }
}
